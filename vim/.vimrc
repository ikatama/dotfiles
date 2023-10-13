" --- Plugin -----
packadd vim-jetpack
call jetpack#begin()

" --- Core ---
Jetpack 'tani/vim-jetpack', {'opt': 1}
Jetpack 'vim-airline/vim-airline'
Jetpack 'vim-airline/vim-airline-themes'
let g:airline_theme = 'luna'
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#buffer_idx_mode = 1
let g:airline#extensions#tabline#fnamemod = ':t'
Jetpack 'w0ng/vim-hybrid' 
colorscheme hybrid

call jetpack#end()

" --- python -----
let g:python_host_prog = '/mnt/c/Users/haled/AppData/Local/Programs/Python/Python310/python.exe'
let g:python3_host_prog = '/mnt/c/Users/haled/AppData/Local/Programs/Python/Python310/python.exe'

" --- basic -----
set number
set title
syntax on
set encoding=utf-8
set expandtab
set smartindent
set shiftwidth=4
set tabstop=4

set backup
set backupdir=$HOME/dotfiles/vim/.vim/tmp/backup/
set undodir=$HOME/dotfiles/vim/.vim/tmp/undo/
set directory=$HOME/dotfiles/vim/.vim/tmp/swap/
set viminfo=

silent! call MakeDirIfNoExists(&undodir)
silent! call MakeDirIfNoExists(&backupdir)
silent! call MakeDirIfNoExists(&directory)

" --- key remap -----
inoremap jk <ESC>

