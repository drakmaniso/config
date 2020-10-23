" Experimental modernization

noremap i k
noremap I {
noremap <c-w>i <c-w>k
noremap <c-w>I <c-w>K

noremap j h
noremap J b
noremap <C-W>j <C-W>h
noremap <C-W>J <C-W>H

noremap k j
noremap K }
noremap <C-W>k <C-W>j
noremap <C-W>K <C-W>J

noremap l l
noremap L hel
vnoremap L e
noremap <C-W>l <C-W>l
noremap <C-W>L <C-W>L

noremap u b
noremap U ^

noremap o hel
vnoremap o e
noremap O $l
vnoremap O $h

noremap y ^
noremap Y 0
noremap p $l
vnoremap p $h

noremap <A-j> zh
noremap <A-l> zl
noremap <A-i> <C-Y>
noremap <A-k> <C-E>
noremap <A-u> <C-W>W
noremap <A-o> <C-W>w

" noremap r <ESC>
" noremap r<SPACE> r
" noremap rr V
" vnoremap rr V
" noremap <C-R> <C-V>
" noremap rj hv
" noremap rl v
" noremap ri hvkl
" noremap rk vjh
" noremap ru hvlb
" noremap ro vhe
" noremap rh v^
" noremap ry v0
" noremap rp v$h
" noremap rJ v^
" noremap rU v0
" noremap rL v$h
" noremap rO v$

noremap f <ESC>
noremap F V
noremap ff lbvhe
noremap <C-F> <C-V>
noremap fj hv
noremap fl v
noremap fi hvkl
noremap fk vjh
noremap fu hvlb
noremap fJ hvlb
noremap fo vhe
noremap fL vhe
noremap fh v^
noremap fy v0
noremap fp v$h
noremap fU v0
noremap fO v$
noremap fs vf

noremap s f
noremap S F

nnoremap <BS> dh
vnoremap <BS> "_d
nnoremap <C-H> dh
vnoremap <C-H> "_d

noremap <SPACE> i
vnoremap <SPACE> c
"noremap <CR> :

au InsertLeave * normal l

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

function SmoothScroll(up)
	if a:up
		let scrollaction="\<C-y>"
	else
		let scrollaction="\<C-e>"
	endif
	exec "normal " . scrollaction
	redraw
	let counter=1
	while counter<&scroll
		let counter+=1
		sleep 8m
		redraw
		exec "normal " . scrollaction
	endwhile
endfunction
noremap e <C-U>
noremap d <C-D>
noremap <PageUp> <C-U>
noremap <PageDown> <C-D>
nnoremap e :call SmoothScroll(1)<Enter>
nnoremap d :call SmoothScroll(0)<Enter>
inoremap <C-e> <Esc>:call SmoothScroll(1)<Enter>i
inoremap <C-d> <Esc>:call SmoothScroll(0)<Enter>i

" noremap E gg
" noremap D G

map w <C-W>

noremap q @
noremap @ q

" set guicursor=v-c-sm:block,n:ver25,i-ci-ve:hor20,r-cr-o:hor20
set guicursor=v-c-sm:block,n:ver50,i-ci-ve:ver25-blinkwait700-blinkon400-blinkoff250,r-cr-o:hor20


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

set synmaxcol=250

set notermguicolors
set background=dark
colorscheme minim
"colorscheme mygroove
"colorscheme monokai_pro
"colorscheme gruvbox
"colorscheme noctu

"match ExtraWhiteSpace /^\ \+/

map <F10> :echo "hi<" . synIDattr(synID(line("."),col("."),1),"name") . '> trans<'
\ . synIDattr(synID(line("."),col("."),0),"name") . "> lo<"
\ . synIDattr(synIDtrans(synID(line("."),col("."),1)),"name") . ">"<CR>


" Personal Stuff

set nocursorline
"hi CursorLine   ctermfg=NONE ctermbg=NONE cterm=NONE
"au InsertEnter * hi CursorLine ctermfg=NONE ctermbg=NONE cterm=underline
"au InsertLeave * hi CursorLine ctermfg=NONE ctermbg=NONE cterm=NONE

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
set wildignore=.git,elm-stuff

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

"set inccommand="nosplit"

set list
set listchars=tab:·\ ,trail:·
set listchars=tab:│\ ,trail:·
set listchars=tab:\ \ ,trail:·
"set listchars=tab:\ \ ,trail:·
"set listchars=tab:┆\ ,trail:·
"let g:indentLine_char_list = ['|', '¦', '┆', '┊']

"set fillchars=vert:\│

set autoindent
set nosmartindent
set nocindent
set tabstop=4
set noexpandtab
set smarttab
set softtabstop=0
set shiftwidth=0

set nosplitright
set splitbelow
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

set wildcharm=<C-Z>

nmap <leader>w :wa<CR>


" CtrlP

let g:ctrlp_working_path_mode = 'r'
"let g:ctrlp_user_command = ['.git', 'cd %s && git ls-files']
let g:ctrlp_by_filename = 1
let g:ctrlp_map = 't'
nmap b :CtrlPBuffer<CR>
let g:ctrlp_reuse_window = 'netrw\|help'
"let g:ctrlp_match_window = 'bottom,order:btt,min:16,max:16'
let g:ctrlp_match_window = 'bottom,order:btt,min:5,max:5'
let g:ctrlp_status_func = {'main': 'CtrlP_StatusLine'}

let g:ctrlp_custom_ignore = {
  \ 'dir':  '\v([\/]\.(git|hg|svn)$|target$)',
  \ 'file': '\v(\.(exe|o|so|dll)$)',
  \ 'link': 'SOME_BAD_SYMBOLIC_LINKS',
  \ }

function! CtrlP_StatusLine(focus, byfname, regex, prev, item, next, marked)
	let regex = a:regex ? ', regex' : ''
	return getcwd().'%=('.a:item.', by '.a:byfname.' name'.regex.', '.a:marked.' marked)'
endf


" netrw

let g:netrw_banner=0
let g:netrw_list_hide='.git'
let g:netrw_liststyle= 3
"let g:netrw_usetab=1
let g:netrw_special_syntax='true'
"let g:netrw_browse_split=4
"let g:netrw_winsize=-32
nmap T :edit .<CR>


" NERD Tree

" let loaded_nerd_tree=1
" let NERDTreeHijackNetrw=1
let NERDTreeMinimalUI=1
let NERDTreeWinSize=32
" let NERDTreeQuitOnOpen=1
let NERDTreeAutoDeleteBuffer=1
let NERDTreeIgnore=['\~','\.exe$','\.o$','\.obj$','\.hi$']
let NERDTreeRespectWildIgnore=1
let NERDTreeCustomOpenArgs={'file': {'reuse': '', 'where': 'p'}}
let g:loaded_nerdtree_custom_maps = 1
" autocmd VimEnter * call NERDTreeAddKeyMap({
"	\ 'key': 'i',
"	\ 'callback': "NERDTreeMenuUp" })
" autocmd VimEnter * call NERDTreeAddKeyMap({
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


" Rust

let g:rust_recommended_style = 1
let g:rustfmt_autosave = 1

"au FileType rust set makeprg=cargo\ build
au FileType rust map <C-B> :make build<CR>
au FileType rust map <C-R> :make run<CR>

"autocmd QuickFixCmdPost [^l]* nested cwindow
"autocmd QuickFixCmdPost    l* nested lwindow


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

