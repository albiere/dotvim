call pathogen#infect()

" GENERAL SETUP
filetype plugin indent on

set background=dark
set number
set cursorline

set backspace=indent,eol,start
set tabstop=2 " Number of spaces a tab counts
set shiftwidth=2 " Number of spaces when << >> are pressed
set expandtab " Hitting tab results in spaces
set clipboard+=unnamed

" SYNTAX
syntax enable

if &term == 'xterm-256color' || &term == 'screen-256color'
  let &t_SI = "\<Esc>[5 q"
  let &t_EI = "\<Esc>[1 q"
endif

" THEMES
packadd! dracula_pro

let g:dracula_colorterm = 0
let g:dracula_italic = 0

colorscheme dracula_pro

" TAGS
set tags+=./tags

" TREE CONFIGURATION
let g:netrw_liststyle=3
let mapleader=" "
map <leader>k :Explore<cr>

" FZF
set rtp+=/usr/local/opt/fzf
nmap <C-t> :Files<CR>
nmap <C-p> :Files<CR>
