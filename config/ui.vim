set mouse=a

set background=dark
colorscheme jbdark

set number
set relativenumber
set cmdheight=1
set wildmenu
set showcmd

set timeoutlen=500
set ttimeoutlen=0

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
