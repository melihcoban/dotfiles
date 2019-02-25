"General Customization
set nocompatible
filetype plugin indent on

" Indent Settings
set autoindent
set expandtab
set softtabstop =4
set shiftwidth =4
set shiftround

"Show as much as possible of the last line
set display =lastline
set cursorline
set report =0
set synmaxcol =200

" Turn on syntax highlighting
syntax on

" Show line numbers
set number

" Encoding
set encoding=utf-8

" Python Debugging
" map <F5> :!clear;python %
map <F5> :w<CR>:!clear;python %<CR>
map <F6> :w<CR>:!clear;sqlitebrowser attendance.db<CR>
map <F4> :w<CR>:!clear;sqlite3 attendance.db;SELECT * FROM attendanceTrack WHERE 1;<CR>
" Plug-In Support

call plug#begin('~/.vim/plugged')

Plug 'junegunn/seoul256.vim'
Plug 'https://github.com/joshdick/onedark.vim.git'
Plug 'chriskempson/base16-vim'
Plug 'vim-airline/vim-airline'
Plug 'morhetz/gruvbox'
Plug 'w0rp/ale'
Plug 'Valloric/YouCompleteMe'
Plug 'francoiscabrol/ranger.vim'
Plug 'tpope/vim-surround'

call plug#end()

" Ranger Key Mapping

let g:ranger_map_keys = 0
nmap - :Ranger<CR>

" Theme

colorscheme gruvbox
