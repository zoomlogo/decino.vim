" The colourscheme used in decino's videos, in vim.
if version > 580
    hi clear
    if exists("syntax_on")
        syntax reset
    endif
endif

let g:colors_name = "decino"

if !(has("termguicolors") && &termguicolors) && !has("gui_running") && &t_Co != 256
    finish
endif

" from decino's videos:
let s:blue = "#2fa5ff"
let s:orange = "#fd9871"
let s:green = "#66c969"
let s:magenta = "#ff00d8"
let s:brown = "#b27153"
let s:light = "#ffffff"
let s:black = "#020202"

" some additional colours:
let s:red = "#fd4f7f"
let s:d_grey = "#202020"
let s:l_grey = "#404040"

exe "hi Comment guifg=" . s:brown
exe "hi Conceal guifg=" . s:l_grey . " guibg=" . s:black
exe "hi EndOfBuffer guifg=" . s:blue
exe "hi Folded guifg=" . s:blue . " guibg=" . s:d_grey
exe "hi LineNr guifg=" . s:light
exe "hi NonText guifg=" . s:d_grey
exe "hi Normal guifg=" . s:light . " guibg=" . s:black
exe "hi Pmenu guibg=" . s:d_grey
exe "hi PmenuSbar guibg=" . s:d_grey
exe "hi PmenuSel guibg=" . s:l_grey
exe "hi PmenuThumb guifg=" . s:light
exe "hi Question guifg=" . s:green
exe "hi SpecialKey guifg=" . s:l_grey
exe "hi StatusLine guibg=" . s:d_grey
exe "hi TabLineFill guibg=" . s:d_grey
exe "hi TabLineSel guibg=" . s:l_grey
exe "hi WhiteSpace guifg=" . s:d_grey
hi! link SignColumn Normal

exe "hi DiffAdd guifg=" . s:green
exe "hi DiffChange guifg=" . s:orange
exe "hi DiffDelete guifg=" . s:red

exe "hi Constant guifg=" . s:orange
exe "hi Number guifg=" . s:green
hi! link String Number
hi! link Character Number
hi! link Boolean Number
hi! link Float Number

exe "hi Statement guifg=" . s:orange
hi! link Conditional Statement
hi! link Repeat Statement
hi! link Label Statement
hi! link Operator Constant
hi! link Keyword Statement
hi! link Exception Statement

exe "hi Type guifg=" . s:blue
hi! link StorageClass Type
hi! link Structure Type
hi! link Typedef Type

exe "hi Identifier guifg=" . s:magenta
hi! link Function Normal

exe "hi PreProc guifg=" . s:orange
hi! link Include PreProc
hi! link Define PreProc
hi! link Macro PreProc
hi! link PreCondit PreProc

exe "hi Special guifg=" . s:green
hi! link SpecialChar Special
hi! link SpecialComment Special
exe "hi Debug guifg=" . s:magenta

exe "hi Underlined gui=underline"
exe "hi Bold gui=bold"
exe "hi Italic gui=italic"

exe "hi Error guifg=" . s:red
exe "hi Todo guifg=" . s:l_grey

" vim-gitgutter:
hi! link GitGutterAddLine DiffAdd
hi! link GitGutterChangeLine DiffChange
hi! link GitGutterDeleteLine DiffDelete
