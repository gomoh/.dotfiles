"
"  Author: gomoh
" Summary: nvimrc
"

" auto reload init.vim.
augroup MyInit
  autocmd!
  autocmd bufwritepost $MYVIMRC nested source $MYVIMRC | redraw | echo "reload " . $MYVIMRC
augroup END

"
" command line
"
set showcmd
set noshowmode

set wildmenu
set wildmode=list:longest

"
" file format
"
set encoding=utf-8
set fileencoding=utf-8
set fileencodings=utf-8,iso-2022-jp,euc-jp,sjis
set fileformat=unix

set modeline

"
" backup files
"
set swapfile
set directory=.
set noundofile
set nobackup
set viminfo=

"
" indent
"
set tabstop=2
set shiftwidth=0
set expandtab

set shiftround
set autoindent
set smartindent

"
" visual
"
set number
set cursorline
set cursorcolumn

set showmatch
set matchtime=8

set list
set listchars=tab:\|\ ,trail:-,nbsp:+,

set scrolloff=5

set laststatus=2
set statusline=%<%F%m\ %y%=[%2c,\ %l/%L:%P]

if 256 <= &t_Co
  colorscheme wombat256
endif

"
" search replace
"
set ignorecase
set smartcase
set incsearch
set hlsearch
set wrapscan
set gdefault

"
" ime
"
set iminsert=0
set imsearch=0

"
" key maps
"
nnoremap ; :
nnoremap : ;

inoremap <silent> jj <ESC>

"
" windows
"
if has('win32') || has('win64')
  set shellslash
  set mouse=a
  set clipboard=unnamed,unnamedplus
endif

