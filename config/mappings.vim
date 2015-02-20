inoremap jj <esc>

" navigate windows
nnoremap <c-h> <c-w>h
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

" Quick Edit nvimrc
nnoremap <leader>ev :vsp ~/.nvim/nvimrc<cr><c-w><cr>

" source/execute current line
nnoremap <leader>S :exe getline('.')<cr>

" system clipboard mappings
vnoremap <leader>y "+y
nnoremap <leader>Y "+yy
nnoremap <leader>p "+p
