" shell
set shell=/bin/bash

" encoding
set encoding=utf8
scriptencoding utf8
set fileencoding=utf-8
set termencoding=utf8
set fileencodings=utf-8,ucs-boms,euc-jp,ep932
set fileformats=unix,dos,mac
set ambiwidth=double
set nobomb
set t_Co=256

" options
let mapleader=" "

set number
set viminfo=
set clipboard+=unnamed
set belloff=all
set title
set ruler
set cursorline
set autoread
set mouse=a
set foldlevel=50
set virtualedit=onemore
set wildmenu

set backup
set noswapfile
set backupdir=$HOME/dotfiles/vim/.vim/tmp/backup/
set undodir=$HOME/dotfiles/vim/.vim/tmp/undo/
set directory=$HOME/dotfiles/vim/.vim/tmp/swap/

silent! call MakeDirIfNoExists(&undodir)
silent! call MakeDirIfNoExists(&backupdir)
silent! call MakeDirIfNoExists(&directory)

" indent
filetype plugin indent on
set expandtab
set tabstop=4
set softtabstop=4
set autoindent
set smartindent
set shiftwidth=4
set cindent

set backspace=indent,eol,start
set ignorecase
set hlsearch

set helplang=ja

" Key Bind
noremap j gj
noremap k gk
vnoremap j gj
vnoremap k gk

" move window
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-h> <C-w>h
nnoremap <C-l> <C-w>l

inoremap jk <ESC>:<C-u>w<CR>
nnoremap <ESC><ESC> :nohlsearch<CR>

" ----- plugin manager -----

" dein.vim settings {{{
" install dir {{{
let s:dein_dir = expand('~/dotfiles/vim/.cache/dein')
let s:dein_repo_dir = s:dein_dir . '/repos/github.com/Shougo/dein.vim'
" }}}

" dein installation check {{{
if &runtimepath !~# '/dein.vim'
  if !isdirectory(s:dein_repo_dir)
    execute '!git clone https://github.com/Shougo/dein.vim' s:dein_repo_dir
  endif
  execute 'set runtimepath^=' . s:dein_repo_dir
endif
" }}}

" begin settings {{{
if dein#load_state(s:dein_dir)
  call dein#begin(s:dein_dir)

  " .toml file
  let s:rc_dir = expand('~/dotfiles/vim/')
  if !isdirectory(s:rc_dir)
    call mkdir(s:rc_dir, 'p')
  endif
  let s:toml = s:rc_dir . '/dein.toml'
  let s:lazy_toml = s:rc_dir . 'dein_lazy.toml'

  " read toml and cache
  call dein#load_toml(s:toml, {'lazy': 0})
  call dein#load_toml(s:lazy_toml, {'lazy': 1})

  " end settings
  call dein#end()
  call dein#save_state()
endif
" }}}

" plugin installation check {{{
if dein#check_install()
  call dein#install()
endif
" }}}

" plugin remove check {{{
let s:removed_plugins = dein#check_clean()
if len(s:removed_plugins) > 0
  call map(s:removed_plugins, "delete(v:val, 'rf')")
  call dein#recache_runtimepath()
endif
" }}}

" curse

noremap <Up> <Nop>
noremap <Down> <Nop>
noremap <Left> <Nop>
noremap <Right> <Nop>

inoremap <Up> <Nop>
inoremap <Down> <Nop>
inoremap <Left> <Nop>
inoremap <Right> <Nop>

" Color Scheme

syntax on
colorscheme hybrid
set background=dark

