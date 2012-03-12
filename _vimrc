"let g:loaded_matchparen = 1
filetype plugin indent on
colorscheme wombat
set fileencoding=utf8

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

set showcmd
set number
syntax on
set hidden

set nocursorline
set nocursorcolumn

set tabstop=4
set shiftwidth=4
set ai

set backspace=indent,eol,start

set wrap
set linebreak
set incsearch
set ignorecase
set smartcase

"nnoremap ; :

"vimrc editing
if has("unix")
	nnoremap <F11> :tabnew ~/.vim/vimrc/_vimrc<CR>
else
	nnoremap <F11> :tabnew ~/vimfiles/vimrc/_vimrc<CR>
endif
"reload vimrc
nnoremap <F12> :source $MYVIMRC<CR>


"my plugins
nnoremap <F1> :call HiTag()<CR>
nnoremap <F9> :call Bbuf2()<CR>  

set hlsearch
set nolazyredraw

nnoremap <C-s> :w<CR>
inoremap <C-s> <Esc>:w<CR>
vnoremap <C-s> <Esc>:w<CR>

nnoremap <F8> :noh<CR>

"new line in normal mode
nnoremap <CR> o<Esc>
nnoremap <S-CR> i<CR><Esc><Right>
nnoremap <S-Space> i <Esc><Right>

set statusline=%m\ %t

"paste from clipboard
inoremap <C-v> <C-r>*
nnoremap <C-v> "+p

"move character left/right
nnoremap <S-Right> xp
nnoremap <S-Left> xhhp

nnoremap <C-Down> :m+<CR>
nnoremap <C-Up> :m-2<CR>
inoremap <C-Down> <Esc>:m+<CR>gi
inoremap <C-Up> <Esc>:m-2<CR>gi
vnoremap <C-Down> :m'>+<CR>gv
vnoremap <C-Up> :m-2<CR>gv

"let mapleader = ","

"add/remove js comments
nnoremap <leader>cj _i//<Esc>
vnoremap <leader>ch c<!--<Esc>gpa--><Esc>

"close xml tags
inoremap <leader>/ </<C-x><C-o><Right>

"expand tag
inoremap <C-Space> <Left><C-o>viwc<<C-r>"></<C-r>"><Left><C-o>T>
inoremap <S-Space> <Left><C-o>viwc<<C-r>"></<C-r>"><Left><C-o>T><CR><CR><Up>

"alt buffer
nnoremap <leader># :b#<CR>

"move by visual lines (when word wrapped)
nnoremap j gj
nnoremap k gk
inoremap <Down> <C-o>gj
inoremap <Up> <C-o>gk

"surround selection with common tags
vnoremap <C-p> c<p><C-o>gp</p><Esc>o<Esc>
vmap <C-b> S<strong>
inoremap <C-CR> <br />

"search/replace selected
vnoremap <leader>s y:%s/<C-r>0/

"<li> list
vnoremap <leader>li :s/\v(\s*)(.*)/\1<li>\2<\/li>/g<CR>:noh<CR>
vnoremap <leader>ul :s/\v(\s*)(.*)/\1<li>\2<\/li>/g<CR>:noh<CR>gvc<ul><Esc>pV']>']o</ul><Esc><<

set autochdir
set shellslash

nnoremap <F5> :set ft=html<CR>
nnoremap <F6> :set ft=php<CR>

nnoremap <leader>z zfat
nnoremap <leader>l _vg_
nnoremap vi_ F_lvf_h
nnoremap ci_ F_lvf_hc

nnoremap <leader>i :call Bimg()<CR>

"copy/paste to/from clipboard
nnoremap <leader>v ggVG
vnoremap <leader>y "+y

"some snippets
nnoremap <leader>ks f>i style=""<Left>
nnoremap <leader>kc f>i class=""<Left>
nnoremap <leader>kw f>i width=""<Left>
nnoremap <leader>kb f>i border=""<Left>
inoremap <leader>ki <img src="" alt="" /><C-O>10h
inoremap <leader>kt <table cellpadding="0" cellspacing="0" border="0" width=""></table><C-O>7h<CR><CR><Up>
nnoremap <leader>klm ciW<a href="mailto:<C-O>P"><C-O>P</a><Esc>
nnoremap <leader>kl ciW<a href="<C-O>P"><C-O>P</a><Esc>


"duplicate alt="" as a title=""
nnoremap <F7> :set nohls<CR>:s/alt="\(.\{-}\)"/& title="\1"/<CR>:let @/=""<CR>:set hls<CR>

"yank/delete atribute with values
nnoremap <F3> vawf";y
nnoremap <F4> vawf";d

"open in Chrome
nnoremap <F10>c :!start "C:\Users\Bart Nieleszczuk\AppData\Local\Google\Chrome\Application\chrome.exe" "%:p"<CR> 
"open in IE
nnoremap <F10>i :!start "C:\Program Files\Internet Explorer\iexplore.exe" "%:p"<CR> 

"highlight TDs without width
nnoremap <F2>w /^\(.*width.*\)\@!.*<td.*$<CR>
"highlight IMGs without />
nnoremap <F2>i /^\(.*\/>.*\)\@!.*<img.*$<CR>

