set nocompatible
set t_Co=256
set bg=dark
set modeline

" To install, do :PlugInstall!
call plug#begin('~/.vim/plugged')
Plug 'vim-scripts/eighties.vim'
Plug 'vim-airline/vim-airline'
Plug 'flazz/vim-colorschemes'
Plug 'rafi/awesome-vim-colorschemes'
Plug 'nightsense/vimspectr'
Plug 'tomlion/vim-solidity'
Plug 'kien/ctrlp.vim'
Plug 'scrooloose/nerdtree'
Plug 'ap/vim-buftabline'
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
set sw=4 sts=4 ts=8 et

" Nerdtree requires apt-vim to install.
" Opens NERDTree tab automatically.
autocmd vimenter * NERDTree
autocmd vimenter * wincmd p
" Closes NERDTree tab if only one open.
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif


syntax on
