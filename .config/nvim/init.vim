set nocompatible
set modeline
syntax enable
set t_Co=256

" To install, do :PlugInstall!
call plug#begin('~/.vim/plugged')
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'morhetz/gruvbox'
call plug#end()

let g:ftplugin_sql_omni_key = '<C-j>'
let g:gruvbox_italic=1
let g:airline_powerline_fonts=1
let g:gruvbox_contrast_light="hard"
let g:gruvbox_termcolors=16

hi Normal ctermbg=none

set background=light
autocmd vimenter * ++nested colorscheme gruvbox

set noswapfile
set nobackup
set nowb

imap <up> <nop>
imap <down> <nop>
imap <left> <nop>
imap <right> <nop>

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
