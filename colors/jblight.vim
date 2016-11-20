set background=light

highlight clear

if exists("syntax_on")
    syntax reset
endif

let g:colors_name = "jblight"
let s:black_n   =  0
let s:black_b   =  8
let s:red_n     =  1
let s:red_b     =  9
let s:green_n   =  2
let s:green_b   = 10
let s:yellow_n  =  3
let s:yellow_b  = 11
let s:blue_n    =  4
let s:blue_b    = 12
let s:magenta_n =  5
let s:magenta_b = 13
let s:cyan_n    =  6
let s:cyan_b    = 14
let s:white_n   =  7
let s:white_b   = 15


" 256-colors
let s:c_gray0 = 245
let s:c_gray1 = 251
let s:c_gray2 = 255
let s:c_blue0 = 031
let s:c_blue1 = 038
let s:c_blue2 = 045
let s:c_orange0 = 136
let s:c_orange1 = 208
let s:c_orange2 = 216
let s:c_puple0 = 171


" ------------------------------------------------------------------
" General
" ------------------------------------------------------------------

exe "hi Statement ctermfg =" . s:c_blue0 . " ctermbg=none cterm=none"
exe "hi Comment   ctermfg =" . s:c_gray1  . " ctermbg=none cterm=italic"
exe "hi Function  ctermfg =" . s:blue_n   . " ctermbg=none cterm=none"
exe "hi Todo      ctermfg =" . s:red_n    . " ctermbg=none cterm=underline"
exe "hi PreProc   ctermfg =" . s:c_orange0 . " ctermbg=none cterm=none"
exe "hi Delimiter ctermfg =" . s:c_orange1 . " ctermbg=none cterm=none"

exe "hi Type       ctermfg =" . s:c_gray0    . " ctermbg=none cterm=none"
exe "hi Typedef    ctermfg =" . s:c_blue1    . " ctermbg=none cterm=none"
exe "hi Define     ctermfg =" . s:c_blue1    . " ctermbg=none cterm=none"
exe "hi Macro      ctermfg =" . s:c_blue1    . " ctermbg=none cterm=none"
exe "hi Identifier ctermfg =" . s:blue_n    . " ctermbg=none cterm=none"
exe "hi Keyword    ctermfg =" . s:c_orange1    . " ctermbg=none cterm=none"
exe "hi Operator   ctermfg =" . s:c_blue2    . " ctermbg=none cterm=none"
exe "hi String     ctermfg =" . s:green_n    . " ctermbg=none cterm=none"
exe "hi Number     ctermfg =" . s:c_blue1  . " ctermbg=none cterm=none"
exe "hi Boolean    ctermfg =" . s:c_puple0   . " ctermbg=none cterm=none"
exe "hi Special    ctermfg =" . s:c_gray0    . " ctermbg=none cterm=none"

exe "hi Folded     ctermfg =" . s:blue_b  . " ctermbg=none cterm=none"
exe "hi SpecialKey ctermfg =" . s:c_gray1 . " ctermbg=none cterm=none"

exe "hi Title ctermfg=" . s:red_n . " ctermbg=none cterm=none"


" ------------------------------------------------------------------
" GUI
" ------------------------------------------------------------------

exe "hi LineNr       ctermfg="              . s:c_gray0  . " ctermbg=" . s:c_gray2 . " cterm=none"
exe "hi CursorLineNr ctermfg="              . s:black_n . " ctermbg=none cterm=none"
exe "hi CursorLine   ctermfg=none ctermbg=" . s:c_gray2  . " cterm=none"
exe "hi VertSplit    ctermfg="              . s:black_b  . " ctermbg=" . s:c_gray2 . " cterm=none"
exe "hi SignColumn   ctermfg=none ctermbg=" . s:c_gray2  . " cterm=none"
exe "hi Directory    ctermfg="              . s:cyan_n   . " ctermbg=none cterm=none"
exe "hi ColorColumn  ctermfg=none ctermbg=none cterm=none"
exe "hi Visual       ctermfg="              . s:black_b  . " ctermbg=" . s:c_gray2 . " cterm=none"


exe "hi Pmenu        ctermfg =" . "none"    . " ctermbg=" . s:c_gray2 . " cterm=none"
exe "hi PmenuSel     ctermfg =" . s:black_n . " ctermbg=" . s:c_blue0  . " cterm=none"

" Diffs
exe "hi DiffAdd      ctermfg =" . s:black_n . " ctermbg=" . s:green_n . " cterm=none"
exe "hi DiffChange   ctermfg =" . s:blue_b  . " ctermbg=none              cterm=none"
exe "hi DiffText     ctermfg =" . s:black_n . " ctermbg=" . s:cyan_b  . " cterm=none"
exe "hi DiffDelete   ctermfg =" . s:red_n   . " ctermbg=none              cterm=none"

" Errors/Warnings
exe "hi ErrorMsg ctermfg=" . s:red_n . " ctermbg=none cterm=none"

" Search
exe "hi Search ctermfg=" . s:black_n . " ctermbg=" . s:blue_n . " cterm=none"


" ------------------------------------------------------------------
" Java
" ------------------------------------------------------------------

exe "hi javaCommentTitle ctermfg=" . s:black_b . " ctermbg=none cterm=italic"


" ------------------------------------------------------------------
" JavaScript
" ------------------------------------------------------------------

exe "hi javaScriptValue ctermfg=" . s:magenta_b   . " ctermbg=none cterm=none"
exe "hi xmlEndTag ctermfg=" . s:c_blue0  . " ctermbg=none cterm=none"


" ------------------------------------------------------------------
" HTML
" ------------------------------------------------------------------

exe "hi htmlBold cterm=bold"


" ------------------------------------------------------------------
" PHP
" ------------------------------------------------------------------

exe "hi phpParent ctermfg =" . s:c_gray0 . " ctermbg=none cterm=none"


" ------------------------------------------------------------------
" Haskell
" ------------------------------------------------------------------

exe "hi haskellDecl ctermfg =" . s:c_orange1 . " ctermbg=none cterm=none"
exe "hi haskellDeclKeyword ctermfg =" . s:c_orange1 . " ctermbg=none cterm=none"
exe "hi haskellWhere ctermfg =" . s:c_orange2 . " ctermbg=none cterm=none"
exe "hi haskellDelimiter ctermfg =" . s:c_gray1 . " ctermbg=none cterm=none"


" ------------------------------------------------------------------
" Go
" ------------------------------------------------------------------

exe "hi goDeclType ctermfg =" . s:c_orange2 . " ctermbg=none cterm=none"
exe "hi goMethod ctermfg =" . 241 . " ctermbg=none cterm=none"
exe "hi goReceiverVar ctermfg =" . 241 . " ctermbg=none cterm=none"
exe "hi goReceiverType ctermfg =" . 31 . " ctermbg=none cterm=none"
