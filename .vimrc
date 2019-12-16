set nocompatible
set t_Co=256
set bg=dark
set modeline

" To install, do :PlugInstall!
call plug#begin('~/.vim/plugged')
Plug 'vim-scripts/eighties.vim'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'flazz/vim-colorschemes'
Plug 'rafi/awesome-vim-colorschemes'
Plug 'nightsense/vimspectr'
Plug 'tomlion/vim-solidity'
Plug 'kien/ctrlp.vim'
Plug 'ap/vim-buftabline'
call plug#end()

colorscheme angr

let g:airline_powerline_fonts = 1

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

" Gets rid of that annoying sound
set visualbell

syntax on
