set nocompatible
set t_Co=256
set modeline

" To install, do :PlugInstall!
call plug#begin('~/.vim/plugged')
Plug 'vim-scripts/eighties.vim'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'nightsense/vimspectr'
Plug 'tomlion/vim-solidity'
Plug 'rafi/awesome-vim-colorschemes'
Plug 'kien/ctrlp.vim'
Plug 'ap/vim-buftabline'
Plug 'altercation/vim-colors-solarized'
call plug#end()

syntax enable
set background=dark
colorscheme purify

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
set expandtab

set visualbell

syntax on
