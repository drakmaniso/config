highlight clear

if exists("syntax_on")
	syntax reset
endif

let g:colors_name="minim"

let s:t_Co = exists('&t_Co') && !empty(&t_Co) && &t_Co > 1 ? &t_Co : 2
let s:italics = (&t_ZH != '' && &t_ZH != '[7m') || has('gui_running') || has('nvim')

hi! link CursorColumn CursorLine
"hi! link QuickFixLine Search
hi! link StatusLineTerm StatusLine
hi! link StatusLineTermNC StatusLineNC
hi! link VisualNOS Visual
hi! link lCursor Cursor
hi! link iCursor Cursor
hi! link vCursor Cursor

"hi! link cStatement Keyword
"hi! link cStructure Keyword
"hi! link cConditional Keyword
"hi! link cRepeat Keyword
"hi! link cString Constant
"hi! link cCharacter Constant
"hi! link cFormat Constant
"hi! link cSpecial Constant
"hi! link cNumber Constant
"hi! link cConstant none
"hi! link cType none
"hi! link cppType none
hi! link htmlTag Keyword
hi! link htmlEndTag Keyword
hi! link javaScriptParens Delimiter
hi! link javaScriptBraces Delimiter
hi! link elmAlias Keyword

if &background ==# 'dark'

	hi Normal       ctermfg=14   ctermbg=0    cterm=NONE

	hi Cursor       ctermfg=NONE ctermbg=NONE cterm=NONE
	hi Title        ctermfg=NONE ctermbg=NONE cterm=bold
	hi VertSplit    ctermfg=8    ctermbg=NONE cterm=NONE
	hi StatusLine   ctermfg=4    ctermbg=0    cterm=reverse
	hi StatusLineNC ctermfg=8    ctermbg=0    cterm=reverse
	au InsertLeave * hi StatusLine   ctermfg=4    ctermbg=0    cterm=reverse
	au InsertEnter * hi StatusLine   ctermfg=10   ctermbg=0    cterm=reverse
	hi SignColumn   ctermfg=8    ctermbg=NONE cterm=italic
	hi FoldColumn   ctermfg=8    ctermbg=NONE cterm=italic
	hi LineNr       ctermfg=8    ctermbg=NONE cterm=italic
	hi CursorLine   ctermfg=NONE ctermbg=NONE cterm=bold
	hi CursorLineNr ctermfg=NONE ctermbg=NONE cterm=bold,italic
	au InsertEnter * hi CursorLineNr cterm=italic,reverse
	au InsertLeave * hi CursorLineNr cterm=italic
	hi Visual       ctermfg=NONE ctermbg=8    cterm=NONE
	"hi Visual       cterm=reverse
	hi EndOfBuffer  ctermfg=8    ctermbg=NONE cterm=NONE
	hi NonText      ctermfg=8    ctermbg=NONE cterm=NONE
	hi Whitespace   ctermfg=8    ctermbg=NONE cterm=NONE
	hi MatchParen   ctermfg=9    ctermbg=NONE cterm=NONE
	hi IncSearch    ctermfg=9    ctermbg=NONE cterm=NONE
	hi QuickFixLine cterm=reverse
	hi PMenu        ctermfg=0    ctermbg=6    cterm=NONE
	hi PMenuSbar    ctermfg=0    ctermbg=6    cterm=NONE
	hi PMenuThumb   ctermfg=0    ctermbg=15   cterm=NONE
	hi PMenuSel     ctermfg=0    ctermbg=14   cterm=NONE
	hi Directory    ctermfg=NONE ctermbg=NONE cterm=bold
	"hi WildMenu     ctermfg=9    ctermbg=NONE cterm=NONE
	hi WarningMsg   ctermfg=9    ctermbg=NONE cterm=bold
	hi TabLine      ctermfg=0    ctermbg=8    cterm=NONE
	hi TabLineFill  ctermfg=0    ctermbg=8    cterm=NONE
	hi TabLineSel   ctermfg=0    ctermbg=4    cterm=NONE

	" Code-related highlight groups

	hi Comment        ctermfg=13   ctermbg=NONE cterm=italic
	hi SpecialComment ctermfg=13   ctermbg=NONE cterm=NONE

	hi Constant	   ctermfg=12   ctermbg=NONE cterm=NONE
	hi String	   ctermfg=12   ctermbg=NONE cterm=NONE
	hi Character   ctermfg=12   ctermbg=NONE cterm=NONE
	hi Number	   ctermfg=12   ctermbg=NONE cterm=NONE
	hi Boolean	   ctermfg=12   ctermbg=NONE cterm=NONE
	hi Float	   ctermfg=12   ctermbg=NONE cterm=NONE

	hi Identifier  ctermfg=NONE ctermbg=NONE cterm=NONE
	hi Function	   ctermfg=11   ctermbg=NONE cterm=NONE

	hi Type		   ctermfg=NONE ctermbg=NONE cterm=NONE
	hi StorageClas ctermfg=NONE ctermbg=NONE cterm=NONE
	hi Structure   ctermfg=NONE ctermbg=NONE cterm=NONE
	hi Typedef	   ctermfg=NONE ctermbg=NONE cterm=NONE

	hi PreProc	   ctermfg=10   ctermbg=NONE cterm=NONE
	hi Include	   ctermfg=10   ctermbg=NONE cterm=NONE
	hi Define	   ctermfg=10   ctermbg=NONE cterm=NONE
	hi Macro	   ctermfg=10   ctermbg=NONE cterm=NONE
	hi PreCondit   ctermfg=10   ctermbg=NONE cterm=NONE
	hi Statement   ctermfg=10   ctermbg=NONE cterm=NONE
	hi Conditional ctermfg=10   ctermbg=NONE cterm=NONE
	hi Repeat	   ctermfg=10   ctermbg=NONE cterm=NONE
	hi Label	   ctermfg=10   ctermbg=NONE cterm=NONE
	hi Keyword	   ctermfg=10   ctermbg=NONE cterm=NONE
	hi Exception   ctermfg=10   ctermbg=NONE cterm=NONE
	hi Operator	   ctermfg=NONE ctermbg=NONE cterm=NONE

	hi Special	   ctermfg=NONE ctermbg=NONE cterm=NONE
	hi SpecialChar ctermfg=NONE ctermbg=NONE cterm=NONE
	hi Tag		   ctermfg=NONE ctermbg=NONE cterm=NONE
	hi Delimiter   ctermfg=NONE ctermbg=NONE cterm=NONE
	hi Debug	   ctermfg=NONE ctermbg=NONE cterm=NONE

	hi Underlined ctermfg=NONE ctermbg=NONE cterm=underline

	hi Ignore     ctermfg=NONE ctermbg=NONE cterm=strikethrough

	hi Error      ctermfg=9    ctermbg=NONE cterm=undercurl

	hi Todo       ctermfg=9    ctermbg=NONE cterm=NONE

else " Light Background
	


endif

