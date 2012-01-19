filetype plugin on
colorscheme wombat

set guioptions-=T
"set columns=125
"set lines=58
"let g:screen_size_restore_pos = 1
"let g:screen_size_by_vim_instance = 1

if has("unix")
	"linux"
	set dir=/home/artbek/vimtmp
else
	set guifont=Consolas
	set dir=c:\\vimtmp
endif	

set number
syntax on
set hidden

set cursorline

set tabstop=4
set shiftwidth=4
set ai

set backspace=indent,eol,start

set wrap
set linebreak
set incsearch
set ignorecase
set smartcase

nnoremap ; :

"vimrc editing
if has("unix")
	nnoremap <F11> :tabnew ~/.vim/vimrc/_vimrc<CR>
else
	nnoremap <F11> :tabnew ~/vimfiles/vimrc/_vimrc<CR>
endif

nnoremap <F12> :source $MYVIMRC<CR>

nnoremap <F9> :call Bbuf2()<CR>  

set hlsearch
set nolazyredraw

nnoremap <C-s> :w<CR>
inoremap <C-s> <Esc>:w<CR>

nnoremap <F8> :noh<CR>

"new line in normal mode
nnoremap <CR> o<Esc>

set statusline=%m\ %t

"paste from clipboard
inoremap <C-v> <C-r>*

"move character left/right
nnoremap <S-Right> xp
nnoremap <S-Left> xhhp

nnoremap <C-Down> :m+<CR>
nnoremap <C-Up> :m-2<CR>
inoremap <C-Down> <Esc>:m+<CR>gi
inoremap <C-Up> <Esc>:m-2<CR>gi
vnoremap <C-Down> :m'>+<CR>gv
vnoremap <C-Up> :m-2<CR>gv

let mapleader = ","

"add/remove js comments
nnoremap <leader>c ^i//<Esc>
nnoremap <leader>d ^xx

"close xml tags
inoremap <leader>l </<C-x><C-o>

"expand tag
inoremap <C-Space> <Esc>vbc<<Esc>pa></<Esc>pa><Esc>bba

"alt buffer
nnoremap <leader># :b#<CR>

"indening
vnoremap <Tab> >gv
vnoremap <S-Tab> <gv

nnoremap j gj
nnoremap k gk
inoremap <Down> <C-o>gj
inoremap <Up> <C-o>gk

vnoremap <C-p> c<p><C-o>p</p><Esc>
vnoremap <C-b> c<strong><C-o>P</strong><Esc>
inoremap <C-CR> <br />

