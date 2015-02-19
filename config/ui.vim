set mouse=a

set background=dark
colorscheme jbdark

set number
set relativenumber
set cmdheight=1
set wildmenu
set showcmd

set cursorline    " highlight line the cursor is currently on
set nostartofline " dont go to beginning of the line on buffer switch

set showmode " show current editing mode

set completeopt=menuone

" highlight column at 81 characters and beyond 120 characters
let &colorcolumn="81,".join(range(120,999), ",")

set backspace=indent,eol,start

" highlight whitespace
set list
set listchars=tab:>-,trail:.,extends:>,precedes:<,nbsp:.

" enable status line
set laststatus=2

set statusline=

set statusline+=%{GitBranch()}  "branch
set statusline+=%f              "tail of the filename

set statusline+=%h              "help file flag
set statusline+=%m              "modified flag
set statusline+=%r              "read only flag

set statusline+=%=              "left/right separator

set statusline+=\ %y            "filetype
set statusline+=[%{&ff},        "file format
set statusline+=%{strlen(&fenc)?&fenc:'none'}] "file encoding
set statusline+=\ %c,           "cursor column
set statusline+=%l/%L           "cursor line/total lines

"
" Return git branch of the current file.
"
function! GitBranch()
    let dir = expand('%:p:h')

    let branch = system("cd " . dir . ";git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* //'")
    if branch != ''
        return "[" . substitute(branch, '\n', '', 'g') . "] "
    en
    return ''
endfunction

"
" Toggle Absolute/Relative line numbers
"
function! ToggleAbsoluteLineNumbers()
    if &l:relativenumber
        set norelativenumber
    else
        set relativenumber
    endif
endfunction

nnoremap <leader>ll :call ToggleAbsoluteLineNumbers()<cr>
