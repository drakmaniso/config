highlight clear

if exists("syntax_on")
	syntax reset
endif

let g:colors_name="mygroove"

let s:t_Co = exists('&t_Co') && !empty(&t_Co) && &t_Co > 1 ? &t_Co : 2
let s:italics = (&t_ZH != '' && &t_ZH != '[7m') || has('gui_running') || has('nvim')

"let s:italics = s:italics && get(g:, 'gruvbox_italics', 1)
hi! link CursorColumn CursorLine
hi! link QuickFixLine Search
hi! link StatusLineTerm StatusLine
hi! link StatusLineTermNC StatusLineNC
hi! link VisualNOS Visual
hi! link Tag Special
hi! link lCursor Cursor
hi! link iCursor Cursor
hi! link vCursor Cursor

if (has('termguicolors') && &termguicolors) || has('gui_running')
	if &background ==# 'dark'
		" Dark Background
		let g:terminal_ansi_colors = ['#282828', '#cc241d', '#98971a', '#d79921',
					\ '#458588', '#b16286', '#689d6a', '#a89984', '#928374', '#fb4934',
					\ '#b8bb26', '#fabd2f', '#83a598', '#d3869b', '#8ec07c', '#ebdbb2']
		if has('nvim')
			let g:terminal_color_0 = '#282828'
			let g:terminal_color_1 = '#cc241d'
			let g:terminal_color_2 = '#98971a'
			let g:terminal_color_3 = '#d79921'
			let g:terminal_color_4 = '#458588'
			let g:terminal_color_5 = '#b16286'
			let g:terminal_color_6 = '#689d6a'
			let g:terminal_color_7 = '#a89984'
			let g:terminal_color_8 = '#928374'
			let g:terminal_color_9 = '#fb4934'
			let g:terminal_color_10 = '#b8bb26'
			let g:terminal_color_11 = '#fabd2f'
			let g:terminal_color_12 = '#83a598'
			let g:terminal_color_13 = '#d3869b'
			let g:terminal_color_14 = '#8ec07c'
			let g:terminal_color_15 = '#ebdbb2'
		endif

		hi Normal guifg=#fbf1c7 guibg=#1d2021 guisp=NONE gui=NONE cterm=NONE
		hi Visual guifg=NONE guibg=#fbe157 guisp=NONE gui=NONE
		hi Keyword guifg=#fabd2f guibg=NONE guisp=NONE gui=NONE cterm=NONE
		hi Function guifg=#fe8019 guibg=NONE guisp=NONE gui=NONE cterm=NONE
		hi Statement guifg=#076678 guibg=NONE guisp=NONE gui=NONE cterm=NONE
		hi Constant guifg=#8ec07c guibg=NONE guisp=NONE gui=NONE cterm=NONE
		hi Delimiter guifg=#bdae93 guisp=NONE gui=NONE cterm=NONE
		hi Operator guifg=#bdae93 guisp=NONE gui=NONE cterm=NONE
		hi Comment guifg=#d3869b guibg=NONE guisp=NONE gui=italic cterm=italic
		hi Todo guifg=#fb4934 guibg=NONE guisp=NONE gui=bold,italic cterm=bold,italic
		hi Title guifg=NONE guibg=NONE guisp=NONE gui=bold cterm=bold

		hi VertSplit guifg=#bdae93 guibg=NONE gui=NONE guisp=NONE cterm=NONE term=NONE

		hi StatusLine guifg=#8ec07c guibg=#1d2021 gui=reverse,bold guisp=NONE cterm=reverse term=reverse
		hi StatusLineNC guifg=#928374 guibg=#1d2021 gui=reverse,bold guisp=NONE cterm=reverse term=reverse
		au InsertEnter * hi StatusLine guifg=#af3a03 guibg=#1d2021 gui=reverse,bold guisp=NONE cterm=reverse term=reverse
		au InsertLeave * hi StatusLine guifg=#689d6a guibg=#1d2021 gui=reverse,bold guisp=NONE cterm=reverse term=reverse

	else
		" Light Background
		let g:terminal_ansi_colors = ['#fbf1c7', '#cc241d', '#98971a', '#d79921',
					\ '#458588', '#b16286', '#689d6a', '#7c6f64', '#928374', '#9d0006',
					\ '#79740e', '#b57614', '#076678', '#8f3f71', '#427b58', '#3c3836']
		if has('nvim')
			let g:terminal_color_0 = '#fbf1c7'
			let g:terminal_color_1 = '#cc241d'
			let g:terminal_color_2 = '#98971a'
			let g:terminal_color_3 = '#d79921'
			let g:terminal_color_4 = '#458588'
			let g:terminal_color_5 = '#b16286'
			let g:terminal_color_6 = '#689d6a'
			let g:terminal_color_7 = '#7c6f64'
			let g:terminal_color_8 = '#928374'
			let g:terminal_color_9 = '#9d0006'
			let g:terminal_color_10 = '#79740e'
			let g:terminal_color_11 = '#b57614'
			let g:terminal_color_12 = '#076678'
			let g:terminal_color_13 = '#8f3f71'
			let g:terminal_color_14 = '#427b58'
			let g:terminal_color_15 = '#3c3836'
		endif

		hi Normal guifg=#3c3836 guibg=#fbf1c7 guisp=NONE gui=NONE cterm=NONE
		hi Visual guifg=NONE guibg=#fbe157 guisp=NONE gui=NONE
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

