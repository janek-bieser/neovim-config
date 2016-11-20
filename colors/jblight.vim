"
" Colors From: https://upload.wikimedia.org/wikipedia/en/1/15/Xterm_256color_chart.svg
" Author: Janek Bieser
"

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

let s:g_black_n = "#2e2e2e"
let s:g_black_b = "#545454"
let s:g_red_n = "#a74646"
let s:g_red_b = "#d84747"
let s:g_green_n = "#569a53"
let s:g_green_b = "#63b760"
let s:g_yellow_n = "#cbc17f"
let s:g_yellow_b = "#e6d7af"
let s:g_blue_n = "#6598c1"
let s:g_blue_b = "#6ea3d9"
let s:g_magenta_n = "#e4a1ce"
let s:g_magenta_b = "#f1a8db"
let s:g_cyan_n = "#44a3a8"
let s:g_cyan_b = "#78cfd9"
let s:g_white_n = "#9b9b9c"
let s:g_white_b = "#cbcbcb"


" 256-colors
let s:t_gray01 = 245
let s:t_gray02 = 251
let s:t_gray03 = 255
let s:t_gray04 = 241
let s:g_gray01 = "#8a8a8a"
let s:g_gray02 = "#c6c6c6"
let s:g_gray03 = "#eeeeee"
let s:g_gray04 = "626262"

let s:t_blue01 = 031
let s:t_blue02 = 038
let s:t_blue03 = 045
let s:g_blue01 = "#0087af"
let s:g_blue02 = "#00afd7"
let s:g_blue03 = "#00d7ff"

let s:t_orange01 = 136
let s:t_orange02 = 208
let s:t_orange03 = 216
let s:g_orange01 = "#af8700"
let s:g_orange02 = "#ff8700"
let s:g_orange03 = "#ffaf87"

let s:t_purple01 = 171
let s:g_purple01 = "d75fff"


" ------------------------------------------------------------------
" General
" ------------------------------------------------------------------

exe "hi Normal guifg='#222222' guibg='#ffffff' gui=none"
exe "hi Statement ctermfg=" . s:t_blue01 . " ctermbg=none cterm=none guifg=" . s:g_blue01 . " guibg=none gui=none"
exe "hi Comment   ctermfg=" . s:t_gray02  . " ctermbg=none cterm=italic guifg=" . s:g_gray02  . " guibg=none gui=italic"
exe "hi Function  ctermfg=" . s:blue_n   . " ctermbg=none cterm=none guifg=" . s:blue_n . " guibg=none gui=none"
exe "hi Todo      ctermfg=" . s:red_n    . " ctermbg=none cterm=underline guifg=" . s:g_red_n . " guibg=none gui=underline"
exe "hi PreProc   ctermfg=" . s:t_orange01 . " ctermbg=none cterm=none guifg=" . s:g_orange01 . " guibg=none gui=none"
exe "hi Delimiter ctermfg=" . s:t_orange02 . " ctermbg=none cterm=none guifg=" . s:g_orange02 . " guibg=none gui=none"

exe "hi Type       ctermfg=" . s:t_gray01    . " ctermbg=none cterm=none guifg=" . s:g_gray01    . " guibg=none gui=none"
exe "hi Typedef    ctermfg=" . s:t_blue02    . " ctermbg=none cterm=none guifg=" . s:g_blue02    . " guibg=none gui=none"
exe "hi Define     ctermfg=" . s:t_blue02    . " ctermbg=none cterm=none guifg=" . s:g_blue02    . " guibg=none gui=none"
exe "hi Macro      ctermfg=" . s:t_blue02    . " ctermbg=none cterm=none guifg=" . s:g_blue02    . " guibg=none gui=none"
exe "hi Identifier ctermfg=" . s:blue_n    . " ctermbg=none cterm=none guifg=" . s:g_blue_n . " guibg=none gui=none"
exe "hi Keyword    ctermfg=" . s:t_orange02    . " ctermbg=none cterm=none guifg=" . s:g_orange02    . " guibg=none gui=none"
exe "hi Operator   ctermfg=" . s:t_blue03    . " ctermbg=none cterm=none guifg=" . s:g_blue03    . " guibg=none gui=none"
exe "hi String     ctermfg=" . s:green_n    . " ctermbg=none cterm=none guifg=" . s:g_green_n . " guibg=none gui=none"
exe "hi Number     ctermfg=" . s:t_blue02  . " ctermbg=none cterm=none guifg=" . s:g_blue02  . " guibg=none gui=none"
exe "hi Boolean    ctermfg=" . s:t_purple01   . " ctermbg=none cterm=none guifg=" . s:g_purple01   . " guibg=none gui=none"
exe "hi Special    ctermfg=" . s:t_gray01    . " ctermbg=none cterm=none guifg=" . s:g_gray01    . " guibg=none gui=none"

exe "hi Folded     ctermfg=" . s:blue_b  . " ctermbg=none cterm=none guifg=" . s:g_blue_b . " guibg=none gui=none"
exe "hi SpecialKey ctermfg=" . s:t_gray02 . " ctermbg=none cterm=none guifg=" . s:g_gray02 . " guibg=none gui=none"

exe "hi Title ctermfg=" . s:red_n . " ctermbg=none cterm=none guifg=" . s:g_red_n . " guibg=none gui=none"


" ------------------------------------------------------------------
" GUI
" ------------------------------------------------------------------

exe "hi LineNr       ctermfg="              . s:t_gray01  . " ctermbg=" . s:t_gray03 . " cterm=none guifg=" . s:g_gray01  . " guibg=" . s:g_gray03 . " gui=none"
exe "hi CursorLineNr ctermfg="              . s:black_n . " ctermbg=none cterm=none"
exe "hi CursorLine   ctermfg=none ctermbg=" . s:t_gray03  . " cterm=none guifg=none guibg=" . s:g_gray03  . "  gui=none"
exe "hi VertSplit    ctermfg="              . s:black_b  . " ctermbg=" . s:t_gray03 . " cterm=none guifg=" . s:g_black_b . " guibg=" . s:g_gray03 . " gui=none"
exe "hi SignColumn   ctermfg=none ctermbg=" . s:t_gray03  . " cterm=none" . " guifg=none guibg=" . s:g_gray03  . " guibg=none gui=none"
exe "hi Directory    ctermfg="              . s:cyan_n   . " ctermbg=none cterm=none" . " guifg=" . s:g_cyan_n . " guibg=none gui=none"
exe "hi ColorColumn  ctermfg=none ctermbg=none cterm=none guifg=none guibg=none gui=none"
exe "hi Visual       ctermfg="              . s:black_b  . " ctermbg=" . s:t_gray03 . " cterm=none guifg=" . s:g_black_b . " guibg=" . s:g_gray03 . " gui=none"


exe "hi Pmenu        ctermfg=none ctermbg=" . s:t_gray03 . " cterm=none" . " guifg=none guibg=" . s:g_gray03 . " gui=none"
exe "hi PmenuSel     ctermfg=" . s:black_n . " ctermbg=" . s:t_blue01  . " cterm=none" . " guifg=" . s:g_black_n . " guibg=" . s:g_blue01 . " gui=none"

" Diffs
exe "hi DiffAdd      ctermfg=" . s:black_n . " ctermbg=" . s:green_n . " cterm=none" . " guifg=" . s:g_black_n . " guibg=" . s:g_green_n . " gui=none"
exe "hi DiffChange   ctermfg=" . s:blue_b  . " ctermbg=none              cterm=none" . " guifg=" . s:g_blue_b . " guibg=none gui=none"
exe "hi DiffText     ctermfg=" . s:black_n . " ctermbg=" . s:cyan_b  . " cterm=none" . " guifg=" . s:g_black_n . " guibg=" . s:g_cyan_b . " gui=none"
exe "hi DiffDelete   ctermfg=" . s:red_n   . " ctermbg=none              cterm=none" . " guifg=" . s:g_red_n . " guibg=none gui=none"

" Errors/Warnings
exe "hi ErrorMsg ctermfg=" . s:red_n . " ctermbg=none cterm=none" . " guifg=" . s:g_red_n . " guibg=none gui=none"

" Search
exe "hi Search ctermfg=" . s:black_n . " ctermbg=" . s:blue_n . " cterm=none" . " guifg=" . s:g_black_n . " guibg=" . s:g_blue_n . " gui=none"


" ------------------------------------------------------------------
" Java
" ------------------------------------------------------------------

exe "hi javaCommentTitle ctermfg=" . s:black_b . " ctermbg=none cterm=italic" . " guifg=" . s:g_black_b . " guibg=none gui=italic"


" ------------------------------------------------------------------
" JavaScript
" ------------------------------------------------------------------

exe "hi javaScriptValue ctermfg=" . s:magenta_b   . " ctermbg=none cterm=none" . " guifg=" . s:g_magenta_b . " guibg=none gui=none"
exe "hi xmlEndTag ctermfg=" . s:t_blue01  . " ctermbg=none cterm=none" . " guifg=" . s:g_blue01  . " guibg=none gui=none"


" ------------------------------------------------------------------
" HTML
" ------------------------------------------------------------------

exe "hi htmlBold cterm=bold gui=bold"


" ------------------------------------------------------------------
" PHP
" ------------------------------------------------------------------

exe "hi phpParent ctermfg =" . s:t_gray01 . " ctermbg=none cterm=none" . " guifg=" . s:g_gray01 . " guibg=none gui=none"


" ------------------------------------------------------------------
" Haskell
" ------------------------------------------------------------------

exe "hi haskellDecl ctermfg =" . s:t_orange02 . " ctermbg=none cterm=none" . " guifg=" . s:g_orange02 . " guibg=none gui=none"
exe "hi haskellDeclKeyword ctermfg =" . s:t_orange02 . " ctermbg=none cterm=none" . " guifg=" . s:g_orange02 . " guibg=none gui=none"
exe "hi haskellWhere ctermfg =" . s:t_orange03 . " ctermbg=none cterm=none " . "guifg=" . s:g_orange03 . " guibg=none gui=none"
exe "hi haskellDelimiter ctermfg =" . s:t_gray02 . " ctermbg=none cterm=none" . " guifg=" . s:g_gray02 . " guibg=none gui=none"


" ------------------------------------------------------------------
" Elm
" ------------------------------------------------------------------

exe "hi elmType ctermfg=" . s:t_gray01 . " ctermbg=none cterm=none guifg=" . s:g_gray01 . " guibg=none gui=none"
exe "hi elmTypedef ctermfg =" . s:t_orange02 . " ctermbg=none cterm=none" . " guifg=" . s:g_orange02 . " guibg=none gui=none"
exe "hi elmBraces ctermfg =" . s:t_gray02 . " ctermbg=none cterm=none" . " guifg=" . s:g_gray02 . " guibg=none gui=none"
exe "hi elmDelimiter ctermfg =" . s:t_gray02 . " ctermbg=none cterm=none" . " guifg=" . s:g_gray02 . " guibg=none gui=none"

" ------------------------------------------------------------------
" Go
" ------------------------------------------------------------------

exe "hi goDeclType ctermfg =" . s:t_orange03 . " ctermbg=none cterm=none" . " guifg=" . s:g_orange03 . " guibg=none gui=none"
exe "hi goMethod ctermfg =" . s:t_gray04 . " ctermbg=none cterm=none" . " guifg=" . s:g_gray04 . " guibg=none gui=none"
exe "hi goReceiverVar ctermfg =" . s:t_gray04 . " ctermbg=none cterm=none" . " guifg=" . s:g_gray04 . " guibg=none gui=none"
exe "hi goReceiverType ctermfg =" . s:t_blue01 . " ctermbg=none cterm=none" . " guifg=" . s:g_blue01 . " guibg=none gui=none"
