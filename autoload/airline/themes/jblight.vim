let g:airline#themes#jblight#palette = {}


let s:red_n     =  1
let s:blue_n    =  4
let s:g_red_n = "#a74646"
let s:g_blue_n = "#6598c1"

let s:t_white = 231
let s:g_white = "#ffffff"

let s:t_gray01 = 245
let s:t_gray02 = 251
let s:t_gray03 = 255
let s:t_gray04 = 241
let s:g_gray01 = "#8a8a8a"
let s:g_gray02 = "#c6c6c6"
let s:g_gray03 = "#eeeeee"
let s:g_gray04 = "626262"

let s:t_blue03 = 045
let s:g_blue03 = "#00d7ff"



let s:N1   = [ s:g_gray03, s:g_gray04, s:t_gray03, s:t_gray04 ]
let s:N2   = [ s:g_gray03, s:g_gray01, s:t_gray03, s:t_gray01 ]
let s:N3   = [ s:g_gray04, s:g_gray03, s:t_gray04, s:t_gray03 ]
let g:airline#themes#jblight#palette.normal = airline#themes#generate_color_map(s:N1, s:N2, s:N3)

let s:I1   = [ s:g_white, s:g_blue_n, s:t_white, s:blue_n ]
let s:I2   = [ s:g_gray03, s:g_gray01, s:t_gray03, s:t_gray01 ]
let s:I3   = [ s:g_gray04, s:g_gray03, s:t_gray04, s:t_gray03 ]
let g:airline#themes#jblight#palette.insert = airline#themes#generate_color_map(s:I1, s:I2, s:I3)

let s:R1   = [ s:g_red_n, s:g_gray04, s:t_white, s:red_n ]
let s:R2   = [ s:g_gray03, s:g_gray01, s:t_gray03, s:t_gray01 ]
let s:R3   = [ s:g_gray04, s:g_gray03, s:t_gray04, s:t_gray03 ]
let g:airline#themes#jblight#palette.replace = airline#themes#generate_color_map(s:R1, s:R2, s:R3)

let s:V1   = [ s:g_blue03, s:g_gray04, s:t_white, s:t_blue03 ]
let s:V2   = [ s:g_gray03, s:g_gray01, s:t_gray03, s:t_gray01 ]
let s:V3   = [ s:g_gray04, s:g_gray03, s:t_gray04, s:t_gray03 ]
let g:airline#themes#jblight#palette.visual = airline#themes#generate_color_map(s:V1, s:V2, s:V3)

let s:IA1   = [ s:g_gray02, s:g_gray04, s:t_gray03, s:t_gray01 ]
let s:IA2   = [ s:g_gray02, s:g_gray04, s:t_gray03, s:t_gray01 ]
let s:IA3   = [ s:g_gray02, s:g_gray04, s:t_gray03, s:t_gray01 ]
let g:airline#themes#jblight#palette.inactive = airline#themes#generate_color_map(s:IA1, s:IA2, s:IA3)
