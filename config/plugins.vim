" NERD tree
let NERDTreeIgnore=['\.class$', '\~$']
nnoremap <leader>n :NERDTreeToggle<cr>

" accio syntax checker
let g:accio_auto_open = 1
augroup acciogo
    au!
    au BufWritePost *.go :Accio ["go", "gometalinter"]
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
