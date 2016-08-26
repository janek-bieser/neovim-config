" NERD tree
let NERDTreeIgnore=['\.class$', '\~$']
nnoremap <leader>n :NERDTreeToggle<cr>

" accio syntax checker
let g:accio_auto_open = 1

augroup acciocompiler
    au!
    au BufWritePost *.go :Accio ["go", "golint"]
    au BufWritePost *.cpp,*.c :Accio clang %
    au BufWritePost *.js,*.jsx :Accio ["eslint %", "flowjs %"]
augroup END

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

" airline
let g:airline_left_sep = ''
let g:airline_right_sep = ''

function! AccioStatus()
    let status_line = accio#statusline()
    if status_line == "Errors: 0"
        return ""
    endif
    return status_line
endfunction

let g:airline_section_warning = airline#section#create_right(['%{AccioStatus()}'])

" elm
let g:elm_format_autosave = 1
let g:elm_setup_keybindings = 0
let g:elm_make_output_file = "/tmp/elm-vim-tmp-compile.js"

augroup acciocompiler
    au BufWritePost *.elm :ElmMake
augroup END

" javascript
let g:javascript_plugin_jsdoc = 1
let g:javascript_plugin_flow = 1
