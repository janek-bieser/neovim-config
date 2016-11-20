call plug#begin('~/.vim/plugged')

" general purpose plugins
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-repeat'
Plug 'pgdouyon/vim-accio'
Plug 'mhinz/vim-grepper'
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'junegunn/fzf.vim'
Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
Plug 'scrooloose/nerdtree', { 'on': 'NERDTreeToggle' }
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'SirVer/ultisnips'

" color schemes
Plug 'altercation/vim-colors-solarized'
Plug 'jnurmine/Zenburn'

" language specific plugins
Plug 'fatih/vim-go', { 'for': 'go', 'do': ':GoInstallBinaries' }
Plug 'zchee/deoplete-go', { 'for': 'go', 'do': 'make' }
Plug 'elmcast/elm-vim', { 'for': 'elm' }
Plug 'pangloss/vim-javascript', { 'for': 'javascript' }
Plug 'mxw/vim-jsx', { 'for': 'javascript' }
Plug 'rust-lang/rust.vim', { 'for': 'rust' }
Plug 'kchmck/vim-coffee-script'
Plug 'elixir-lang/vim-elixir'
Plug 'awetzel/elixir.nvim', { 'for': 'elixir', 'do': 'yes \| ./install.sh' }
Plug 'neovimhaskell/haskell-vim', { 'for': 'haskell' }
Plug 'bitc/vim-hdevtools', { 'for': 'haskell' }

call plug#end()
