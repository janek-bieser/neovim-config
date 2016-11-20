" NERD tree
let NERDTreeIgnore=['\.class$', '\~$']
nnoremap <leader>n :NERDTreeToggle<cr>

" accio syntax checker
augroup acciocompiler
    au!
    au BufWritePost *.go :Accio ["gobuild", "golint %"]
    au BufWritePost *.cpp,*.c :Accio clang %
    au BufWritePost *.js,*.jsx :Accio ["eslint %", "flowjs %"]
    au BufWritePost *.rb :Accio rubocop %
    au BufWritePost *.php :Accio php %
    au BufWritePost *.hs :cexpr [] | :Accio ["hdevtools %", "hlint %"]
augroup END

" let g:accio_auto_copen = 1

" deoplete
let g:deoplete#enable_at_startup = 1
let g:deoplete#max_list = 20

" Go
let g:go_fmt_command = "goimports"
let g:go_highlight_functions = 1
let g:go_highlight_methods = 1
let g:go_highlight_structs = 1
let g:go_list_type = "quickfix"

" ultisnips
let g:UltiSnipsEditSplit = "vertical"
let g:UltiSnipsExpandTrigger = "<tab>"
let g:UltiSnipsJumpForwardTrigger = "<tab>"
let g:UltiSnipsJumpBackwardTrigger = "<s-tab>"

" fzf / fzf.vim
nnoremap <leader>o :Files<cr>
nnoremap <leader>go :GFiles<cr>
nnoremap <leader>b :Buffers<cr>

let g:fzf_colors =
\ { 'fg':      ['fg', 'Normal'],
  \ 'bg':      ['bg', 'Normal'],
  \ 'hl':      ['fg', 'Normal'],
  \ 'fg+':     ['fg', 'Type'],
  \ 'bg+':     ['bg', 'CursorLine', 'CursorColumn'],
  \ 'hl+':     ['fg', 'Statement'],
  \ 'info':    ['fg', 'PreProc'],
  \ 'prompt':  ['fg', 'Conditional'],
  \ 'pointer': ['fg', 'Exception'],
  \ 'marker':  ['fg', 'Keyword'],
  \ 'spinner': ['fg', 'Label'],
  \ 'header':  ['fg', 'Normal'] }


" airline
let g:airline_powerline_fonts = 1
let g:airline_theme='base16'
if !exists('g:airline_symbols')
  let g:airline_symbols = {}
endif
let g:airline_symbols.space = "\ua0"

function! AccioStatus()
    let status_line = accio#statusline()
    if status_line == "Errors: 0"
        return ""
    endif
    return status_line
endfunction

let g:airline_section_warning = airline#section#create_right(['%{AccioStatus()}'])

" elm
let g:elm_format_autosave = 0
let g:elm_setup_keybindings = 0
let g:elm_make_output_file = "/tmp/elm-vim-tmp-compile.js"

augroup elmfmt
    au BufWritePost *.elm :ElmFormat
augroup END

augroup acciocompiler
    "au BufWritePost *.elm :ElmMake
augroup END

" javascript
let g:javascript_plugin_jsdoc = 1
let g:javascript_plugin_flow = 1
let g:jsx_ext_required = 0

" rust
let g:rustfmt_autosave = 1

" haskell
augroup haskellg
    au FileType haskell nnoremap <buffer> <leader>t :HdevtoolsType<cr>
    au FileType haskell nnoremap <buffer> <leader>c :HdevtoolsClear<cr>
augroup END
