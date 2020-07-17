" Experimental modernization

if 1

	noremap i k
	" noremap I V
	" vnoremap I k
	noremap <c-w>i <c-w>k
	noremap <c-w>I <c-w>K

	noremap j h
	" noremap J hv
	" vnoremap J h
	noremap <C-W>j <C-W>h
	noremap <C-W>J <C-W>H

	noremap k j
	" noremap K V
	" vnoremap K j
	noremap <C-W>k <C-W>j
	noremap <C-W>K <C-W>J

	noremap l l
	" noremap L v
	" vnoremap L l
	noremap <C-W>l <C-W>l
	noremap <C-W>L <C-W>L

	noremap <C-K> o
	noremap <C-J> I
	noremap <C-L> A

	noremap u b
	" noremap U hvlb
	" vnoremap U b

	noremap o hel
	vnoremap o e
	" noremap O vhe
	" vnoremap O e

	noremap h ^
	" noremap H hv^
	noremap y 0
	" noremap Y v0
	" vnoremap Y 0
	noremap p $l
	vnoremap p $h
	" noremap P v$h
	" vnoremap P $h
	
	noremap I <C-U>
	noremap K <C-D>
	noremap J zh
	noremap L zl
	noremap U <C-W>W
	noremap O <C-W>w

	noremap r <ESC>
	noremap rr V
	vnoremap rr V
	noremap <C-R> <C-V>
	noremap rj hv
	noremap rl v
	noremap ri hvkl
	noremap rk vjh
	noremap ru hvlb
	noremap ro vhe
	noremap rh v^
	noremap ry v0
	noremap rp v$h
	noremap rJ v^
	noremap rU v0
	noremap rL v$h
	noremap rO v$

	noremap s f
	noremap S F

	noremap e <C-U>
	noremap d <C-D>
	noremap <PageUp> <C-U>
	noremap <PageDown> <C-D>

	nnoremap <BS> dh
	vnoremap <BS> "_d
	nnoremap <C-H> dh
	vnoremap <C-H> "_d

	noremap <SPACE> i
	vnoremap <SPACE> c
	"noremap <CR> :

	noremap z u
	noremap Z <C-R>
	noremap c y
	noremap C Y
	noremap v p
	noremap V P
	vnoremap v "_dP
	vnoremap V "_dP
	noremap x d
	noremap X D

	cnoremap <Left> <Space><BS><Left>
	cnoremap <Right> <Space><BS><Right>
	
	set guicursor=v-c-sm:block,n:ver25,i-ci-ve:block,r-cr-o:hor20

else

	noremap i k
	noremap I {
	noremap <C-I> <C-U>
	noremap <c-w>i <c-w>k
	noremap <c-w>I <c-w>K
	noremap wi <c-w>k
	noremap wI <c-w>K

	noremap j h
	noremap J ^
	noremap <C-W>j <C-W>h
	noremap <C-W>J <C-W>H
	noremap wj <C-W>h
	noremap wJ <C-W>H

	noremap k j
	noremap K }
	noremap <C-K> <C-D>
	noremap <C-W>k <C-W>j
	noremap <C-W>K <C-W>J
	noremap wk <C-W>j
	noremap wK <C-W>J

	noremap l l
	noremap L $
	noremap wl <C-W>l
	noremap wL <C-W>L

	noremap u b
	noremap U 0

	noremap o el
	vnoremap o e
	noremap O $l

	noremap y <C-U>
	noremap h <C-D>
	noremap <PageUp> <C-U>
	noremap <PageDown> <C-D>

	noremap e v
	noremap E V
	vnoremap e V
	noremap <C-E> <C-V>

	noremap <SPACE> i
	vnoremap <SPACE> c

	nnoremap <BS> dh
	vnoremap <BS> "_d
	nnoremap <C-H> dh
	vnoremap <C-H> "_d

	noremap <CR> :

	noremap z u
	noremap Z <C-R>
	noremap c y
	noremap C Y
	noremap v p
	noremap V P
	vnoremap v "_dP
	vnoremap V "_dP
	noremap x d
	noremap X D

	noremap w <C-W>

	noremap q lbvhe

	cnoremap <Left> <Space><BS><Left>
	cnoremap <Right> <Space><BS><Right>
	
	" set guicursor=v-c-sm:block,n:ver25,i-ci-ve:hor20,r-cr-o:hor20

endif

set whichwrap=b,s,h,l,<,>,[,]
set virtualedit=block,onemore

let &t_SH = "\<Esc>[1 q"
let &t_SI = "\<Esc>[3 q"
let &t_SR = "\<Esc>[4 q"
let &t_EI = "\<Esc>[5 q"


" Personal Stuff

" au BufRead,BufNewFile *.grace set filetype=grace

set nocompatible

set encoding=utf-8

syntax on
filetype plugin indent on
set termguicolors
augroup MyColors
    autocmd!
    "autocmd ColorScheme * hi ExtraWhiteSpace ctermfg=red guifg=red | highlight Cursor guifg=white guibg=black
    "autocmd ColorScheme * hi ExtraWhiteSpace none
    autocmd ColorScheme * hi! link String Constant
    autocmd ColorScheme * hi! link Character Constant
    autocmd ColorScheme * hi! link Number Constant
    autocmd ColorScheme * hi! link Boolean Constant
    autocmd ColorScheme * hi! link Float Constant
    autocmd ColorScheme * hi! link Conditional Keyword
    autocmd ColorScheme * hi! link Repeat Keyword
    autocmd ColorScheme * hi! link Label Keyword
    "autocmd ColorScheme * hi! link Statement Keyword
    autocmd ColorScheme * hi! link Typedef Keyword
    autocmd ColorScheme * hi! Operator none
    "autocmd ColorScheme * hi! link Operator Normal
    autocmd ColorScheme * hi! link Exception Keyword
    autocmd ColorScheme * hi! Identifier none
    "autocmd ColorScheme * hi! Function none
    autocmd ColorScheme * hi! Type none
    autocmd ColorScheme * hi! Include none
	autocmd ColorScheme * hi! link PreProc Statement
    "autocmd ColorScheme * hi! Delimiter none
    autocmd ColorScheme * hi! Special none
    autocmd ColorScheme * hi! link cStatement Keyword
    autocmd ColorScheme * hi! link cStructure Keyword
    autocmd ColorScheme * hi! link cConditional Keyword
    autocmd ColorScheme * hi! link cRepeat Keyword
    autocmd ColorScheme * hi! link cString Constant
    autocmd ColorScheme * hi! link cCharacter Constant
    autocmd ColorScheme * hi! link cFormat Constant
    autocmd ColorScheme * hi! link cSpecial Constant
    autocmd ColorScheme * hi! link cNumber Constant
    autocmd ColorScheme * hi! link cConstant none
    autocmd ColorScheme * hi! link cType none
    autocmd ColorScheme * hi! link cppType none
    autocmd ColorScheme * hi! link htmlTag Keyword
    autocmd ColorScheme * hi! link htmlEndTag Keyword
    autocmd ColorScheme * hi! link javaScriptParens Delimiter
    autocmd ColorScheme * hi! link javaScriptBraces Delimiter
    autocmd ColorScheme * hi! link elmAlias Keyword
augroup END
set synmaxcol=250
"colorscheme gruvbox8
set background=light
colorscheme mygroove

"match ExtraWhiteSpace /^\ \+/

map <F10> :echo "hi<" . synIDattr(synID(line("."),col("."),1),"name") . '> trans<'
\ . synIDattr(synID(line("."),col("."),0),"name") . "> lo<"
\ . synIDattr(synIDtrans(synID(line("."),col("."),1)),"name") . ">"<CR>

"set background=dark
"hi Normal guifg=#fbf1c7 guibg=#1d2021 guisp=NONE gui=NONE cterm=NONE
"hi Keyword guifg=#fabd2f guibg=NONE guisp=NONE gui=NONE cterm=NONE
"hi Function guifg=#fe8019 guibg=NONE guisp=NONE gui=NONE cterm=NONE
"hi Constant guifg=#8ec07c guibg=NONE guisp=NONE gui=NONE cterm=NONE
"hi Delimiter guifg=#bdae93 guisp=NONE gui=NONE cterm=NONE
"hi Operator guifg=#bdae93 guisp=NONE gui=NONE cterm=NONE
"hi Comment guifg=#d3869b guibg=NONE guisp=NONE gui=italic cterm=italic
"hi Todo guifg=#fb4934 guibg=NONE guisp=NONE gui=bold,italic cterm=bold,italic
"hi Title guifg=NONE guibg=NONE guisp=NONE gui=bold cterm=bold

"set background=light
"hi Normal guifg=#3c3836 guibg=#fbf1c7 guisp=NONE gui=NONE cterm=NONE
"hi Keyword guifg=#076678 guibg=NONE guisp=NONE gui=NONE cterm=NONE
"hi Function guifg=#79740e guibg=NONE guisp=NONE gui=NONE cterm=NONE
"hi Statement guifg=#79740e guibg=NONE guisp=NONE gui=NONE cterm=NONE
"hi Constant guifg=#427b58 guibg=NONE guisp=NONE gui=NONE cterm=NONE
"hi Delimiter guifg=#b57614 guisp=NONE gui=NONE cterm=NONE
"hi Operator guifg=#b57614 guisp=NONE gui=NONE cterm=NONE
"hi Comment guifg=#8f3f71 guibg=NONE guisp=NONE gui=italic cterm=italic
"hi Todo guifg=#fb4934 guibg=NONE guisp=NONE gui=bold,italic cterm=bold,italic
"hi Title guifg=NONE guibg=NONE guisp=NONE gui=bold cterm=bold

"set background=light
"hi Normal ctermfg=15 ctermbg=0 guisp=NONE gui=NONE cterm=NONE
"hi Keyword ctermfg=12 ctermbg=NONE guisp=NONE gui=NONE cterm=NONE
"hi Function  ctermfg=10 ctermbg=NONE guisp=NONE gui=NONE cterm=NONE
"hi Constant ctermfg=14 ctermbg=NONE guisp=NONE gui=NONE cterm=NONE
"hi Delimiter ctermfg=8 guisp=NONE gui=NONE cterm=NONE
"hi Operator ctermfg=8 guisp=NONE gui=NONE cterm=NONE
"hi Comment ctermfg=13 ctermbg=NONE guisp=NONE gui=italic cterm=italic
"hi Todo ctermfg=1 ctermbg=NONE guisp=NONE gui=bold,italic cterm=bold,italic
"hi Title ctermfg=NONE ctermbg=NONE guisp=NONE gui=bold cterm=bold

" CtrlP

let g:ctrlp_by_filename = 1


" Personal Stuff

set nocursorline
"hi CursorLine guibg=#1d2021
"au InsertEnter * hi CursorLine guibg=#000000
"au InsertLeave * hi CursorLine guibg=#1d2021

set laststatus=2
set statusline=%f%(\ [%M%R%q]%)%=%4c,%4l
" set statusline+=%#NormalColor#%{(mode()=='n')?'\ \ NORMAL\ ':''}
" set statusline+=%#InsertColor#%{(mode()=='i')?'\ \ INSERT\ ':''}
" set statusline+=%#ReplaceColor#%{(mode()=='R')?'\ \ REPLACE\ ':''}
" set statusline+=%#VisualColor#%{(mode()=='v')?'\ \ VISUAL\ ':''}

set cmdheight=1
set switchbuf=useopen,usetab
set signcolumn=auto
set noshowmode
set wildmenu
set wildmode=longest:full,full

set hidden
set autowrite
set nowrap
set backspace=indent,eol,start
set nrformats-=octal
set nostartofline

set title
set scrolloff=1
set sidescrolloff=1
set display+=lastline


set nobackup
set noswapfile
set mouse=a
set mousehide

set nonumber
set nohlsearch
set gdefault

"set inccommand="split"

set list
set listchars=tab:·\ ,trail:·
set listchars=tab:│\ ,trail:·
set listchars=tab:\ \ ,trail:·
"set listchars=tab:\ \ ,trail:·
"set listchars=tab:┆\ ,trail:·
"let g:indentLine_char_list = ['|', '¦', '┆', '┊']

set autoindent
set nosmartindent
set nocindent
set tabstop=4
set noexpandtab
set smarttab
set softtabstop=0
set shiftwidth=0

set nosplitbelow
set splitright
set helpheight=5


" let mapleader=" "

tnoremap <ESC> <C-\><C-N>
tnoremap <A-h> <C-\><C-N><C-w>h
tnoremap <A-j> <C-\><C-N><C-w>j
tnoremap <A-k> <C-\><C-N><C-w>k
tnoremap <A-l> <C-\><C-N><C-w>l
inoremap <A-h> <C-\><C-N><C-w>h
inoremap <A-j> <C-\><C-N><C-w>j
inoremap <A-k> <C-\><C-N><C-w>k
inoremap <A-l> <C-\><C-N><C-w>l

" nnoremap <C-j> <C-e>
" nnoremap <C-k> <C-y>

nnoremap <TAB> :b#<CR>
set wildcharm=<C-Z>
nmap <S-TAB> :b<SPACE><C-Z>

nmap <leader>w :wa<CR>

" nmap <LEADER>r :ls<CR>:b<SPACE>*
" nmap <LEADER>e :e **/*
" nmap <LEADER>u :Lexplore
"inoremap (<CR> (<CR>)<ESC>O
"inoremap {<CR> {<CR>}<ESC>O
" nmap silent e <CR>Explore<CR>


" netrw

let g:netrw_banner=0
let g:netrw_list_hide='.git'
let g:netrw_liststyle= 3
"let g:netrw_usetab=1
let g:netrw_special_syntax='true'
"let g:netrw_browse_split=4
"let g:netrw_winsize=-32

nmap t :edit .<CR>

" NERD Tree
" let loaded_nerd_tree=1
"let NERDTreeHijackNetrw=1
let NERDTreeMinimalUI=1
let NERDTreeWinSize=32
"let NERDTreeQuitOnOpen=1
let NERDTreeAutoDeleteBuffer=1
let NERDTreeIgnore=['\~','\.exe$','\.o$','\.obj$','\.hi$']
let NERDTreeRespectWildIgnore=1
let NERDTreeCustomOpenArgs={'file': {'reuse': '', 'where': 'p'}}
let g:loaded_nerdtree_custom_maps = 1
" autocmd VimEnter * call NERDTreeAddKeyMap({
"	\ 'key': 'i',
"	\ 'callback': "NERDTreeMenuUp" })
"autocmd VimEnter * call NERDTreeAddKeyMap({
"	\ 'key': 'k',
"	\ 'callback': "NERDTreeMenuDown" })
let g:NERDTreeMapOpenSplit = "s"
let g:NERDTreeMapOpenVSplit = "v"
let g:NERDTreeMapJumpLastChild = "I"
let g:NERDTreeMapJumpFirstChild = "K"
let g:NERDTreeMapJumpNextSibling = "<C-I>"
let g:NERDTreeMapJumpPrevSibling = "<C-K>"
let g:NERDTreeMapToggleHidden = "H"
let g:NERDTreeMapActivateNode = "e"
let g:NERDTreeMapOpenRecursively = ""
let g:NERDTreeMapUpdirKeepOpen = ""

" nmap <silent> t :NERDTreeFocus<CR>
" au VimEnter * NERDTreeToggleVCS

" Lightline "

let g:lightline = {
	\ 'colorscheme': 'mygroove',
	\ 'active': {
	\ 'left': [ [ 'readonly', 'filename', 'mofified' ] ],
	\ 'right': [ [ 'lineinfo' ] ] },
	\ 'component': {
	\   'lineinfo': '%3l:%-2v',
	\ },
	\ 'component_function': {
	\   'readonly': 'LightlineReadonly',
	\   'fugitive': 'LightlineFugitive'
	\ },
	\ 'separator': { 'left': '', 'right': '' },
	\ 'subseparator': { 'left': '', 'right': '' }
	\ }
function! LightlineReadonly()
	return &readonly ? '' : ''
endfunction
function! LightlineFugitive()
	if exists('*fugitive#head')
		let branch = fugitive#head()
		return branch !=# '' ? ''.branch : ''
	endif
	return ''
endfunction

" Airline

let g:airline_disabled = 1
let g:airline_theme = 'gruvbox8'
let g:airline_powerline_fonts=1
let g:airline#parts#ffenc#skip_expected_string='utf-8[unix]'
let g:airline_skip_empty_sections = 1
let g:airline_section_z = '%#__accent_bold#%3v :%3l%#__restore__#/%L'
let g:airline#extensions#whitespace#enabled = 1
let g:airline#extensions#whitespace#checks = [ 'indent', 'trailing', 'mixed-indent-file' ]


"
let g:fugitive_no_maps = 1


" Go

au BufNewFile,BufRead *.go setlocal noet ts=4 sw=4 sts=4
au FileType go nmap <leader>i <Plug>(go-imports)
au FileType go nmap <leader>f <Plug>(go-info)
au FileType go nmap <leader>D <Plug>(go-def)
au FileType go nmap <leader>d <Plug>(go-def-split)
au FileType go nmap <leader>o <Plug>(go-doc)
au FileType go nmap <leader>s <Plug>(go-describe)
au FileType go nmap <leader>g <Plug>(go-run-split)
au FileType go nmap <leader>b <Plug>(go-build)
au FileType go nmap <leader>t <Plug>(go-test)
au FileType go nmap <leader>T <Plug>(go-test-func)
au FileType go nmap <leader>l <Plug>(go-lint)
au FileType go nmap <leader>v <Plug>(go-vet)
let g:go_term_enabled=1
let g:go_term_mode="split"
let g:go_term_height=20
let g:go_template_use_pkg=1
let g:go_list_type="quickfix"
let g:go_list_type_command=""
let g:go_doc_keywordprg_enabled = 1
let g:go_metalinter_autosave = 0
" let g:go_metalinter_autosave_enabled = []
" let g:go_metalinter_enabled = []
" let g:go_metalinter_command = "go vet"
let g:go_highlight_functions = 1


" Elm

au FileType elm set makeprg=elm\ make\ src/Main.elm\ --output=elm.js
let g:elm_make_output_file = "elm.js"


" Haskell

au BufNewFile,BufRead *.hs setlocal et ts=4 sw=4 sts=4


" HTML / CSS / Javascript

au BufNewFile,BufRead *.html setlocal et ts=2 sw=2 sts=2
au BufNewFile,BufRead *.css setlocal et ts=2 sw=2 sts=2
au BufNewFile,BufRead *.js setlocal et ts=2 sw=2 sts=2
let g:prettier#autoformat = 1
"autocmd BufWritePre *.js Prettier
"autocmd FileType javascript set formatprg=standard\ --fix\ --stdin
"autocmd BufWritePre *.js exe "normal! gggqG\<C-o>\<C-o>"
autocmd FileType javascript nmap <leader>q gggqG<C-o><C-o>

