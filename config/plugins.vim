" NERD tree
let NERDTreeIgnore=['\.class$', '\~$']
nnoremap <leader>n :NERDTreeToggle<cr>

" CtrlP
let g:ctrlp_max_height = 15
let g:ctrlp_working_path_mode = 'r0'
noremap <leader>bo :CtrlPBuffer<cr>
noremap <leader>o :CtrlP<cr>

" Syntastic
let g:syntastic_enable_html_checker=0
let g:syntastic_javascript_checkers=['jsxhint']

" YouCompleteMe
let g:ycm_global_ycm_extra_conf = '~/.ycm_extra_conf.py'
let g:ycm_key_list_select_completion = ['<Down>']
let g:ycm_key_list_previous_completion = ['<Up>']
let g:ycm_autoclose_preview_window_after_insertion = 1

" JavaScript
let javascript_enable_domhtmlcss=1

" Go
let g:go_fmt_command = "goimports"
let g:go_highlight_functions = 1
let g:go_highlight_methods = 1
let g:go_highlight_structs = 1

" JSX
let g:jsx_ext_required = 0
let g:jsx_pragma_required = 0

" ultisnips
let g:UltiSnipsEditSplit = "vertical"
let g:UltiSnipsExpandTrigger = "<tab>"
let g:UltiSnipsJumpForwardTrigger = "<tab>"
let g:UltiSnipsJumpBackwardTrigger = "<s-tab>"
let g:UltiSnipsSnippetDirectories=[$HOME.'/.nvim/ultisnips']
