highlight clear

if exists("syntax_on")
	syntax reset
endif

let g:colors_name="minima"

let s:t_Co = exists('&t_Co') && !empty(&t_Co) && &t_Co > 1 ? &t_Co : 2
let s:italics = (&t_ZH != '' && &t_ZH != '[7m') || has('gui_running') || has('nvim')

hi! link CursorColumn CursorLine
hi! link QuickFixLine Search
hi! link StatusLineTerm StatusLine
hi! link StatusLineTermNC StatusLineNC
hi! link VisualNOS Visual
hi! link Tag Special
hi! link lCursor Cursor
hi! link iCursor Cursor
hi! link vCursor Cursor

" hi ExtraWhiteSpace ctermfg=red guifg=red | highlight Cursor guifg=white guibg=black
" hi ExtraWhiteSpace none
hi! link String Constant
hi! link Character Constant
hi! link Number Constant
hi! link Boolean Constant
hi! link Float Constant
hi! link Conditional Keyword
hi! link Repeat Keyword
hi! link Label Keyword
hi! link Typedef Keyword
"hi! link Operator 
hi! link Exception Keyword
"hi! Identifier none
"hi! Type none
hi! Include none
hi! link PreProc Statement
hi! Special none
hi! link cStatement Keyword
hi! link cStructure Keyword
hi! link cConditional Keyword
hi! link cRepeat Keyword
hi! link cString Constant
hi! link cCharacter Constant
hi! link cFormat Constant
hi! link cSpecial Constant
hi! link cNumber Constant
hi! link cConstant none
hi! link cType none
hi! link cppType none
hi! link htmlTag Keyword
hi! link htmlEndTag Keyword
hi! link javaScriptParens Delimiter
hi! link javaScriptBraces Delimiter
hi! link elmAlias Keyword

if (has('termguicolors') && &termguicolors) || has('gui_running')
	if &background ==# 'dark'
		" Dark Background

		hi Cursor guifg=NONE guibg=#ffffff
		hi Normal guifg=#ebdbb2 guibg=#1d2021 guisp=NONE gui=NONE cterm=NONE
		hi CursorLine guibg=#1d2021
		au InsertEnter * hi CursorLine guibg=#000000
		au InsertLeave * hi CursorLine guibg=#1d2021
		hi Visual guifg=NONE guibg=#504945 guisp=NONE gui=NONE
		hi EndOfBuffer guifg=#928374 guibg=NONE guisp=NONE gui=NONE cterm=NONE
		hi NonText guifg=#928374 guibg=NONE guisp=NONE gui=NONE cterm=NONE
		hi Whitespace guifg=#928374 guibg=NONE guisp=NONE gui=NONE cterm=NONE
		hi MatchParen guifg=#fe8019 guibg=NONE guisp=NONE gui=NONE cterm=NONE

		hi Keyword guifg=#83c280 guibg=NONE guisp=NONE gui=NONE cterm=NONE
		hi Function guifg=NONE guibg=NONE guisp=NONE gui=NONE cterm=bold
		"hi Function guifg=#e5c55f guibg=NONE guisp=NONE gui=NONE cterm=bold
		hi Statement guifg=NONE guibg=NONE guisp=NONE gui=NONE cterm=NONE
		hi Constant guifg=#a3b7be guibg=NONE guisp=NONE gui=NONE cterm=NONE
		"hi Delimiter guifg=#bdae93 guisp=NONE gui=NONE cterm=NONE
		hi Operator guifg=NONE guisp=NONE gui=NONE cterm=NONE
		hi Comment guifg=#fea0b0 guibg=NONE guisp=NONE gui=italic cterm=italic
		hi Todo guifg=#fb4934 guibg=NONE guisp=NONE gui=bold,italic cterm=bold,italic
		hi Title guifg=NONE guibg=NONE guisp=NONE gui=bold cterm=bold
		hi Identifier guifg=NONE guibg=NONE guisp=NONE gui=NONE cterm=NONE
		hi Type guifg=NONE guibg=NONE guisp=NONE gui=NONE cterm=NONE

		hi VertSplit guifg=#bdae93 guibg=NONE gui=NONE guisp=NONE cterm=NONE term=NONE
		hi StatusLine guifg=#689d6a guibg=#1d2021 gui=reverse,bold guisp=NONE cterm=reverse term=reverse
		hi StatusLineNC guifg=#928374 guibg=#1d2021 gui=reverse,bold guisp=NONE cterm=reverse term=reverse
		au InsertEnter * hi StatusLine guifg=#fe8019 guibg=#1d2021 gui=reverse,bold guisp=NONE cterm=reverse term=reverse
		au InsertLeave * hi StatusLine guifg=#689d6a guibg=#1d2021 gui=reverse,bold guisp=NONE cterm=reverse term=reverse

	else
		" Light Background
		
		hi Cursor guifg=NONE guibg=#ffccdd

		hi Normal guifg=#3c3836 guibg=#fbf1c7 guisp=NONE gui=NONE cterm=NONE
		hi CursorLine guibg=#fbf1c7
		au InsertEnter * hi CursorLine guibg=#ebdbb2
		au InsertLeave * hi CursorLine guibg=#fbf1c7
		hi Visual guifg=NONE guibg=#fbe157 guisp=NONE gui=NONE
		hi EndOfBuffer guifg=#928374 guibg=NONE guisp=NONE gui=NONE cterm=NONE
		hi NonText guifg=#928374 guibg=NONE guisp=NONE gui=NONE cterm=NONE
		hi Whitespace guifg=#928374 guibg=NONE guisp=NONE gui=NONE cterm=NONE
		hi MatchParen guifg=#af3a03 guibg=NONE guisp=NONE gui=NONE cterm=NONE

		hi Keyword guifg=#076678 guibg=NONE guisp=NONE gui=NONE cterm=NONE
		hi Function guifg=NONE guibg=NONE guisp=NONE gui=bold cterm=bold
		hi Statement guifg=#076678 guibg=NONE guisp=NONE gui=NONE cterm=NONE
		hi Constant guifg=#427b58 guibg=NONE guisp=NONE gui=NONE cterm=NONE
		hi Delimiter guifg=#7c6f64 guisp=NONE gui=NONE cterm=NONE
		hi Operator guifg=#7c6f64 guisp=NONE gui=NONE cterm=NONE
		hi Comment guifg=#8f3f71 guibg=NONE guisp=NONE gui=italic cterm=italic
		hi Todo guifg=#9d0006 guibg=NONE guisp=NONE gui=bold,italic cterm=bold,italic
		hi Title guifg=NONE guibg=NONE guisp=NONE gui=bold cterm=bold

		hi VertSplit guifg=#bdae93 guibg=NONE gui=NONE guisp=NONE cterm=NONE term=NONE
		hi StatusLine guifg=#689d6a guibg=#fbf1c7 gui=reverse,bold guisp=NONE cterm=reverse term=reverse
		hi StatusLineNC guifg=#bdae93 guibg=#fbf1c7 gui=reverse,bold guisp=NONE cterm=reverse term=reverse
		au InsertEnter * hi StatusLine guifg=#af3a03 guibg=#fbf1c7 gui=reverse,bold guisp=NONE cterm=reverse term=reverse
		au InsertLeave * hi StatusLine guifg=#689d6a guibg=#fbf1c7 gui=reverse,bold guisp=NONE cterm=reverse term=reverse


	endif
endif

