let current_compiler = "eslint"

" Stolen from:
" https://github.com/salomvary/vim-eslint-compiler
CompilerSet errorformat=%f:\ line\ %l\\,\ col\ %c\\,\ %trror\ -\ %m,
            \%f:\ line\ %l\\,\ col\ %c\\,\ %tarning\ -\ %m,
            \%-G%.%#
CompilerSet makeprg=eslint\ -f\ compact
