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
Plug 'tpope/vim-commentary'
Plug 'tpope/vim-surround'
Plug 'posva/vim-vue'
call plug#end()

syntax on
colorscheme angr 

set noswapfile
set nobackup
set nowb

imap <up> <nop>
imap <down> <nop>
imap <left> <nop>
imap <right> <nop>

let g:ftplugin_sql_omni_key = '<C-j>'
let g:solarized_termcolors=256
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
set sw=4 sts=4 ts=4 et
set expandtab
set mouse=a

set visualbell

syntax on
