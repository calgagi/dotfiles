set nocompatible
set modeline
syntax enable
set clipboard=unnamedplus

" To install, do :PlugInstall!
call plug#begin('~/.vim/plugged')
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'tpope/vim-commentary'
Plug 'ayu-theme/ayu-vim'
call plug#end()

let g:ftplugin_sql_omni_key = '<C-j>'
let g:airline_powerline_fonts=1

set termguicolors
set background=dark
let ayucolor="dark"
colorscheme ayu

set noswapfile
set nobackup
set nowb

imap <up> <nop>
imap <down> <nop>
imap <left> <nop>
imap <right> <nop>

set cindent
set cino+=j1,(0,ws,Ws
set laststatus=2
set number
noremap <Up> <Nop>
noremap <Down> <Nop>
noremap <Left> <Nop>
noremap <Right> <Nop>
set tabstop=4
set shiftwidth=4
set softtabstop=4
set sw=4 sts=4 ts=4 et
set expandtab
set mouse=a

set visualbell
