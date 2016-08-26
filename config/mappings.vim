inoremap jj <esc>

" navigate windows
"
" The following does not work for me on OSX
" nnoremap <c-h> <c-w>h
" so I changed <c-h> to <BS>.
" See: https://github.com/neovim/neovim/issues/2048
"
nnoremap <BS> <c-w>h
" nnoremap <c-h> <c-w>h
nnoremap <c-j> <c-w>j
nnoremap <c-k> <c-w>k
nnoremap <c-l> <c-w>l

" resize windows
nnoremap <left> <c-w><
nnoremap <right> <c-w>>
nnoremap <up> <c-w>+
nnoremap <down> <c-w>-

" cursor movement
nnoremap j gj
nnoremap k gk
vnoremap j gj
vnoremap k gk

" working directory
nnoremap <leader>lcd :lcd %:p:h<cr>
nnoremap <leader>cd :cd %:p:h<cr>

" auto center
nnoremap G Gzz
nnoremap n nzz
nnoremap N Nzz
nnoremap } }zz
nnoremap { {zz

" split line at cursor location
nnoremap K <esc>i<cr><esc>

" save file
inoremap <c-s> <esc>:w<cr>a
nnoremap <c-s> :w<cr>a

" toggle spelling
nnoremap <leader>s :setlocal spell!<cr>

" don't move on * or #
nnoremap * *<c-o>
nnoremap # #<c-o>

" searching
nnoremap / /\v
nnoremap <silent> <leader>/ :let @/=""<cr>

" inner quotes
inoremap <leader>" ""<esc>i
inoremap <leader>' ''<esc>i

" Quick Edit init.vim
nnoremap <leader>ev :vsp ~/.nvim/init.vim<cr><c-w><cr>

" source/execute current line
nnoremap <leader>S :exe getline('.')<cr>

" system clipboard mappings
vnoremap <leader>y "+y
nnoremap <leader>Y "+yy
nnoremap <leader>p "+p

" uppercase word (useful for writing constants)
nnoremap <c-u> mzgUiw`z
inoremap <c-u> <esc>mzgUiw`za

" exit terminal mode shortcut
tnoremap <esc> <c-\><c-n>
