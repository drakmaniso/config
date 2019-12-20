set nocompatible

set encoding=utf-8

syntax on
filetype plugin indent on
" let $NVIM_TUI_ENABLE_TRUE_COLOR=1
set termguicolors
augroup MyColors
	autocmd!
	autocmd ColorScheme * highlight ExtraWhiteSpace ctermbg=red guibg=red | highlight Cursor guifg=white guibg=black
augroup END
set background=dark
set synmaxcol=250
colorscheme gruvbox8

match ExtraWhiteSpace /^\ \+/

" Personal Stuff

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

set virtualedit=block,onemore

set nobackup
set noswapfile
set mouse=a
set mousehide

set nonumber
set nohlsearch
set gdefault

set inccommand="split"

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
set nosmarttab
set softtabstop=0
set shiftwidth=0

set splitbelow
set splitright
set helpheight=5

noremap i k
noremap j h
noremap k j
noremap u b
noremap o e
noremap p ^
noremap ; $
noremap y <C-U>
noremap h <C-D>

noremap <C-W>i <C-W>k
noremap <C-W>j <C-W>h
noremap <C-W>k <C-W>j
noremap w <C-W>
noremap wi <C-W>k
noremap wj <C-W>h
noremap wk <C-W>j
noremap wl <C-W>l

noremap <SPACE> i
noremap z u
noremap <CR> o
noremap <S-CR> <S-O>
noremap $ ;
noremap c y
noremap C Y
noremap v p
noremap V P
noremap x d
noremap X D
noremap e c
noremap E C
noremap d v
noremap D V
noremap <C-D> <C-V>


noremap <PageDown> <C-D><C-D>
noremap <PageUp> <C-U><C-U>

cnoremap <Left> <Space><BS><Left>
cnoremap <Right> <Space><BS><Right>

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

nnoremap <C-j> <C-e>
nnoremap <C-k> <C-y>

nnoremap <TAB> :b#<CR>
set wildcharm=<C-Z>
nmap <S-TAB> :b<SPACE><C-Z>

nmap <leader>w :wa<CR>

" nmap <LEADER>r :ls<CR>:b<SPACE>*
" nmap <LEADER>e :e **/*
" nmap <LEADER>u :Lexplore
"inoremap (<CR> (<CR>)<ESC>O
"inoremap {<CR> {<CR>}<ESC>O
" nmap - :Explore<CR>


" netrw

let g:netrw_banner=0
let g:netrw_list_hide='.git'
let g:netrw_sizestyle='H'
let g:netrw_usetab=1
let g:netrw_special_syntax='true'

" NERD Tree
"let loaded_nerd_tree=1
let NERDTreeMinimalUI=1
let NERDTreeWinSize=20
let NERDTreeQuitOnOpen=1
let NERDTreeAutoDeleteBuffer=1
let NERDTreeIgnore=['\~','\.exe$','\.o$','\.obj$','\.hi$']
let NERDTreeRespectWildIgnore=1
nmap <silent> <LEADER>e :NERDTreeToggle<CR>


" Lightline "

let g:lightline = {
	\ 'colorscheme': 'gruvbox',
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

let g:elm_make_output_file = "app.js"


" Haskell

au BufNewFile,BufRead *.hs setlocal et ts=4 sw=4 sts=4


" HTML / CSS / Javascript

au BufNewFile,BufRead *.html setlocal et ts=2 sw=2 sts=2
au BufNewFile,BufRead *.css setlocal et ts=2 sw=2 sts=2
au BufNewFile,BufRead *.js setlocal et ts=2 sw=2 sts=2
let g:prettier#autoformat = 1
autocmd BufWritePre *.js Prettier
"autocmd FileType javascript set formatprg=standard\ --fix\ --stdin
"autocmd BufWritePre *.js exe "normal! gggqG\<C-o>\<C-o>"
autocmd FileType javascript nmap <leader>q gggqG<C-o><C-o>

