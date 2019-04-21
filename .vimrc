set nocompatible
set t_Co=256
set bg=dark
set modeline
call plug#begin('~/.vim/plugged')
Plug 'vim-scripts/eighties.vim'
Plug 'vim-airline/vim-airline'
Plug 'flazz/vim-colorschemes'
Plug 'rafi/awesome-vim-colorschemes'
Plug 'nightsense/vimspectr'
Plug 'tomlion/vim-solidity'
Plug 'kien/ctrlp.vim'
call plug#end()

colorscheme angr

set laststatus=2
set number
noremap <Up> <Nop>
noremap <Down> <Nop>
noremap <Left> <Nop>
noremap <Right> <Nop>
set tabstop=4
set shiftwidth=4
set softtabstop=4
set t_Co=256
set paste

syntax on
