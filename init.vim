set encoding=utf-8

" source ~/.nvim/config/vundle.vim
source ~/.nvim/config/install-plugins.vim

syntax on

let mapleader = ","
let maplocalleader = "\\"

" set the shell to zsh to make sure plugin installation is working
set shell=/usr/local/bin/zsh

" source external config files
source ~/.nvim/config/formatting.vim
source ~/.nvim/config/mappings.vim
source ~/.nvim/config/misc.vim
source ~/.nvim/config/ui.vim
source ~/.nvim/config/autocommands.vim

" 3rd party plugins configurations
source ~/.nvim/config/plugins.vim
