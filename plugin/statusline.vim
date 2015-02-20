if exists("g:jb_statusline_loaded")
    finish
endif

let s:all_modes={
	\ 'n'  : 'Normal',
	\ 'no' : 'N·Operator Pending',
	\ 'v'  : 'Visual',
	\ 'V'  : 'V·Line',
	\ '' : 'V·Block',
	\ 's'  : 'Select',
	\ 'S'  : 'S·Line',
	\ '' : 'S·Block',
	\ 'i'  : 'Insert',
	\ 'R'  : 'Replace',
	\ 'Rv' : 'V·Replace',
	\ 'c'  : 'Command',
	\ 'cv' : 'Vim Ex',
	\ 'ce' : 'Ex',
	\ 'r'  : 'Prompt',
	\ 'rm' : 'More',
	\ 'r?' : 'Confirm',
	\ '!'  : 'Shell',
	\}

let s:black_n   =  0
let s:black_b   =  8
let s:red_n     =  1
let s:red_b     =  9
let s:green_n   =  2
let s:green_b   = 10
let s:yellow_n  =  3
let s:yellow_b  = 11
let s:blue_n    =  4
let s:blue_b    = 12
let s:magenta_n =  5
let s:magenta_b = 13
let s:cyan_n    =  6
let s:cyan_b    = 14
let s:white_n   =  7
let s:white_b   = 15

function! ChangeStatuslineColor()
    let l:cur_mode = s:all_modes[mode()]

    if l:cur_mode =~# '\vV.*'
        exe "hi StatusLine ctermfg =" . s:black_n . " ctermbg=" . s:green_n . " cterm=none"
    elseif l:cur_mode ==# 'Insert'
        exe "hi StatusLine ctermfg =" . s:blue_n . " ctermbg=" . s:black_n . " cterm=none"
    elseif l:cur_mode ==# 'Replace'
        exe "hi StatusLine ctermfg =" . s:black_n . " ctermbg=" . s:red_n . " cterm=none"
    else
        exe "hi StatusLine ctermfg =" . s:white_b . " ctermbg=" . s:black_b . " cterm=none"
    endif

    return ''
endfunction

" enable status line
set laststatus=2

set statusline=

"set statusline+=%{GitBranch()}  "branch
set statusline+=%{ChangeStatuslineColor()}
set statusline+=%{fugitive#statusline()}
set statusline+=\ %f              "tail of the filename

set statusline+=%h              "help file flag
set statusline+=%m              "modified flag
set statusline+=%r              "read only flag

set statusline+=%=              "left/right separator

set statusline+=\ %y            "filetype
set statusline+=[%{&ff},        "file format
set statusline+=%{strlen(&fenc)?&fenc:'none'}] "file encoding
set statusline+=\ %c,           "cursor column
set statusline+=%l/%L           "cursor line/total lines

set statusline+=\ %#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

" statusline loaded
let g:jb_statusline_loaded=1
