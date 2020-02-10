" Experimental modernization

noremap i k
" noremap I <BS>vk<SPACE>
noremap I {
noremap <C-W>i <C-W>k

noremap j <BS>
noremap J B
noremap <C-W>j <C-W>h

noremap k j
" noremap K vj<BS>
noremap K }
noremap <C-W>k <C-W>j

noremap l <SPACE>
noremap L e
noremap <C-W>l <C-W>l

noremap u ^
noremap U 0

noremap o $l
noremap O $l

noremap y <C-U>
noremap Y H

noremap h <C-D>
noremap H L

nnoremap <BS> dh
vnoremap <BS> d
nnoremap <C-H> dh
vnoremap <C-H> d

noremap w <C-W>

noremap <SPACE> i
vnoremap <SPACE> c
noremap <CR> o

noremap s v
noremap S <C-V>
noremap d viw
noremap D V

noremap z u
noremap Z <C-R>
noremap c y
noremap C Y
noremap v p
noremap V P
noremap x d
noremap X D

" vnoremap p o
" vnoremap P O

inoremap <ESC> <ESC>l
vnoremap <ESC> <ESC>l

noremap <PageDown> <C-D><C-D>
noremap <PageUp> <C-U><C-U>

cnoremap <Left> <Space><BS><Left>
cnoremap <Right> <Space><BS><Right>

set virtualedit=block,onemore
"set guicursor=v-c-sm:block,n:ver25,i-ci-ve:hor20,r-cr-o:hor20

" Personal Stuff

set nocompatible

set encoding=utf-8

syntax on
filetype plugin indent on
set termguicolors
augroup MyColors
	autocmd!
	autocmd ColorScheme * highlight ExtraWhiteSpace ctermbg=red guibg=red | highlight Cursor guifg=white guibg=black
augroup END
set background=dark
set synmaxcol=250
colorscheme gruvbox8

match ExtraWhiteSpace /^\ \+/

map <F10> :echo "hi<" . synIDattr(synID(line("."),col("."),1),"name") . '> trans<'
\ . synIDattr(synID(line("."),col("."),0),"name") . "> lo<"
\ . synIDattr(synIDtrans(synID(line("."),col("."),1)),"name") . ">"<CR>

hi ExtraWhiteSpace none
hi Constant none
hi String none
hi Character none
hi Number none
hi Boolean none
hi Float none

hi Identifier none
" hi Function none

hi Include none

hi Operator none
hi Delimiter none

hi! link Typedef Keyword

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
set nosmarttab
set softtabstop=0
set shiftwidth=0

set splitbelow
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

