call plug#begin('~/.vim/plugged')

" general purpose plugins
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-repeat'
Plug 'pgdouyon/vim-accio'
Plug 'mhinz/vim-grepper'
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'junegunn/fzf.vim'
Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
Plug 'scrooloose/nerdtree'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'SirVer/ultisnips'

" language specific plugins
Plug 'fatih/vim-go', { 'for': 'go', 'do': ':GoInstallBinaries' }
Plug 'zchee/deoplete-go', { 'for': 'go', 'do': 'make' }

call plug#end()