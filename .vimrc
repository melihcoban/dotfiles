
set nocompatible
syntax enable
set encoding=utf-8
set showcmd
filetype plugin indent on
set mouse=a

""UI
set number
set showcmd
set showmode

""Whitespace
set nowrap
set tabstop=4 shiftwidth=4
set expandtab
set autoindent
set backspace=indent,eol,start

""Searching
set hlsearch
set incsearch
set ignorecase
set smartcase

call plug#begin() 
Plug 'morhetz/gruvbox'
Plug 'vim-airline/vim-airline'
call plug#end()

" air-line
let g:airline_powerline_fonts = 1

if !exists('g:airline_symbols')
    let g:airline_symbols = {}
endif

" unicode symbols
let g:airline_left_sep = '»'
let g:airline_left_sep = '▶'
let g:airline_right_sep = '«'
let g:airline_right_sep = '◀'
let g:airline_symbols.linenr = '␊'
let g:airline_symbols.linenr = '␤'
let g:airline_symbols.linenr = '¶'
let g:airline_symbols.branch = '⎇'
let g:airline_symbols.paste = 'ρ'
let g:airline_symbols.paste = 'Þ'
let g:airline_symbols.paste = '∥'
let g:airline_symbols.whitespace = 'Ξ'

" airline symbols
let g:airline_left_sep = ''
let g:airline_left_alt_sep = ''
let g:airline_right_sep = ''
let g:airline_right_alt_sep = ''
let g:airline_symbols.branch = ''
let g:airline_symbols.readonly = ''
let g:airline_symbols.linenr = ''

set background=dark
colorscheme gruvbox
