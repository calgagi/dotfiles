set nocompatible
set modeline
syntax enable
set termguicolors
set clipboard=unnamedplus

" To install, do :PlugInstall!
call plug#begin('~/.vim/plugged')
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'cocopon/iceberg.vim'
Plug 'tpope/vim-commentary'
Plug 'morhetz/gruvbox'
Plug 'arcticicestudio/nord-vim'
" Plug 'ycm-core/YouCompleteMe'
Plug 'altercation/vim-colors-solarized'
Plug 'nightsense/strawberry'
Plug 'ayu-theme/ayu-vim'
Plug 'NLKNguyen/papercolor-theme'
call plug#end()

let g:ftplugin_sql_omni_key = '<C-j>'
let g:gruvbox_italic=1
let g:airline_powerline_fonts=1
" let g:gruvbox_termcolors=16

" let g:ycm_global_ycm_extra_conf='~/.config/nvim/ycm_global_extra_conf.py'
" let g:ycm_autoclose_preview_window_after_insertion=1
" let g:ycm_enable_diagnostic_signs=0
" let g:ycm_show_diagnostics_ui=0
" set completeopt-=preview
" let ayucolor="light"

set background=dark
colorscheme nord 

" highlight Normal guibg=none ctermbg=none
" highlight NonText guibg=none ctermbg=none
" highlight EndOfBuffer guibg=none ctermbg=none

set noswapfile
set nobackup
set nowb

imap <up> <nop>
imap <down> <nop>
imap <left> <nop>
imap <right> <nop>

set cindent
set cino+=j1,(0,ws,Ws
set laststatus=4
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
