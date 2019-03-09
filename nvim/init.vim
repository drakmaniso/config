set nocompatible

" Pathogen
execute pathogen#infect()

syntax on
filetype plugin indent on
" let $NVIM_TUI_ENABLE_TRUE_COLOR=1
set termguicolors
colorscheme gruvbox
set background=dark
highlight CursorLineNr guibg=NONE guifg=black
set synmaxcol=128

" NERD Tree
let NERDTreeMinimalUI=1
let NERDTreeWinSize=20
let NERDTreeQuitOnOpen=1
let NERDTreeAutoDeleteBuffer=1

" Syntastic
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*
let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0
let g:syntastic_go_checkers = ['gofmt', 'govet']
let g:syntastic_c_remove_include_errors = 1

" Airline"

let g:airline_theme = 'gruvbox'
let g:airline_powerline_fonts=1
let g:airline#parts#ffenc#skip_expected_string='utf-8[unix]'
let g:airline_skip_empty_sections = 1
let g:airline_section_z = '%#__accent_bold#%3v :%3l%#__restore__#/%L'


" Personal Stuff

set cmdheight=2
set switchbuf="usetab"
set signcolumn="yes"
set noshowmode

set hidden
" set autowrite
set nowrap
set backspace=indent,eol,start
set nrformats-=octal

set title
set scrolloff=5
set sidescrolloff=5
set display+=lastline

set virtualedit=all

set nobackup
set noswapfile
" set mouse=a

set relativenumber
set nohlsearch
set gdefault

set softtabstop=-4
set shiftwidth=4
set expandtab
au BufNewFile,BufRead *.go setlocal noet ts=4 sw=4 sts=4

set splitbelow
set splitright

" ijkl movement
" map i <Up>
" map j <Left>
" map k <Down>
" noremap h i


" set cursorline
" hi CursorLine cterm=NONE ctermbg=236 ctermfg=NONE guibg=Grey20

let mapleader=" "
nmap <silent> <LEADER>e :NERDTreeToggle<CR>

tnoremap <ESC> <C-\><C-N>
tnoremap <A-h> <C-\><C-N><C-w>h
tnoremap <A-j> <C-\><C-N><C-w>j
tnoremap <A-k> <C-\><C-N><C-w>k
tnoremap <A-l> <C-\><C-N><C-w>l
inoremap <A-h> <C-\><C-N><C-w>h
inoremap <A-j> <C-\><C-N><C-w>j
inoremap <A-k> <C-\><C-N><C-w>k
inoremap <A-l> <C-\><C-N><C-w>l
nnoremap <A-h> <C-w>h
nnoremap <A-j> <C-w>j
nnoremap <A-k> <C-w>k
nnoremap <A-l> <C-w>l
nnoremap <A-o> <C-w>o
nmap <leader>o <C-w>o
nnoremap <A-c> <C-w>c
nmap <leader>c <C-w>c

nnoremap <C-j> <C-e>
nnoremap <C-k> <C-y>

nmap <leader>w :wa<CR>

nmap <leader>/ :BufExplorer<CR>
nmap <leader>? :BufExplorerHorizontalSplit<CR>
let g:bufExplorerDefaultHelp=0
let g:bufExplorerSplitOutPathName=0
let g:bufExplorerShowRelativePath=1

au FileType go nmap <leader>i <Plug>(go-imports)
au FileType go nmap <leader>f <Plug>(go-info)
au FileType go nmap <leader>D <Plug>(go-def)
au FileType go nmap <leader>d <Plug>(go-def-split)
au FileType go nmap <leader>s <Plug>(go-describe)
au FileType go nmap <leader>r <Plug>(go-run-split)
au FileType go nmap <leader>b <Plug>(go-build)
au FileType go nmap <leader>t <Plug>(go-test)
au FileType go nmap <leader>T <Plug>(go-test-func)
au FileType go nmap <leader>l <Plug>(go-lint)
au FileType go nmap <leader>v <Plug>(go-vet)
let g:go_term_enabled=1
let g:go_term_mode="split"
let g:go_metalinter_autosave=0
let g:go_term_height=20
let g:go_template_use_pkg=1
let g:go_list_type="quickfix"
let g:go_list_type_command=""

