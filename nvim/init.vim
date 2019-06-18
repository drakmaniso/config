set nocompatible

" Pathogen
execute pathogen#infect()

syntax on
filetype plugin indent on
" let $NVIM_TUI_ENABLE_TRUE_COLOR=1
set termguicolors
augroup MyColors
    autocmd!
    autocmd ColorScheme * if &background=='dark' | highlight Normal guibg=NONE | highlight Normal ctermbg=NONE
augroup END
let g:gruvbox_contrast_dark='hard'
let g:gruvbox_contrast_light='hard'
let g:gruvbox_bold=0
colorscheme gruvbox
set background=dark
set synmaxcol=250

" netrw

let g:netrw_banner=0
let g:netrw_list_hide='.git'
let g:netrw_sizestyle='H'
let g:netrw_usetab=1
let g:netrw_special_syntax='true'

" NERD Tree
let NERDTreeMinimalUI=1
let NERDTreeWinSize=20
let NERDTreeQuitOnOpen=1
let NERDTreeAutoDeleteBuffer=1

" CTRL-P
let g:ctrlp_map = '<LEADER>p'
let g:ctrlp_cmd = 'CtrlPMRU'
let g:ctrlp_by_filename = 1
let g:ctrlp_clear_cache_on_exit = 1
let g:ctrlp_mruf_relative = 1
let g:ctrlp_mruf_save_on_update = 1
let g:ctrlp_mruf_exclude = '\.git\/.*'
let g:ctrlp_custom_ignore = {
  \ 'dir':  '\v[\/]\.(git|hg|svn)$',
  \ 'file': '\v\.(exe|so|dll)$',
  \ 'link': 'SOME_BAD_SYMBOLIC_LINKS',
  \ }

" Syntastic
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*
let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 0
let g:syntastic_check_on_wq = 0
let g:syntastic_go_checkers = ['gofmt', 'govet']
let g:syntastic_c_remove_include_errors = 1
let g:syntastic_enable_highlighting = 0

" Airline"

let g:airline_theme = 'gruvbox'
let g:airline_powerline_fonts=1
let g:airline#parts#ffenc#skip_expected_string='utf-8[unix]'
let g:airline_skip_empty_sections = 1
let g:airline_section_z = '%#__accent_bold#%3v :%3l%#__restore__#/%L'


" Personal Stuff

set cmdheight=1
set switchbuf=usetab
set signcolumn=auto
set noshowmode
set wildmenu
set wildmode=longest:full,full

set hidden
" set autowrite
set nowrap
set backspace=indent,eol,start
set nrformats-=octal
set nostartofline

set title
set scrolloff=5
set sidescrolloff=5
set display+=lastline

set virtualedit=all

set nobackup
set noswapfile
set mouse=a

set nonumber
set nohlsearch
set gdefault

set softtabstop=4
set shiftwidth=4
set expandtab
au BufNewFile,BufRead *.go setlocal noet ts=4 sw=4 sts=4
au BufNewFile,BufRead *.html setlocal ts=2 sw=2 sts=2
au BufNewFile,BufRead *.js setlocal ts=2 sw=2 sts=2

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
let g:go_metalinter_autosave=0
let g:go_term_height=20
let g:go_template_use_pkg=1
let g:go_list_type="quickfix"
let g:go_list_type_command=""

" nmap <LEADER>r :ls<CR>:b<SPACE>*
" nmap <LEADER>e :e **/*
" nmap <LEADER>u :Lexplore
"inoremap (<CR> (<CR>)<ESC>O
"inoremap {<CR> {<CR>}<ESC>O
" nmap - :Explore<CR>

"autocmd FileType javascript set formatprg=standard\ --fix\ --stdin
"autocmd BufWritePre *.js exe "normal! gggqG\<C-o>\<C-o>"
autocmd FileType javascript nmap <leader>q gggqG<C-o><C-o>
