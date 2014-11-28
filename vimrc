call pathogen#infect()

" GENERAL SETUP
syntax enable
set background=dark
set number
set cursorline

" SOLARIZED THEMES
let g:solarized_termtrans=1
colorscheme solarized

" TAGS
set tags=./tags

" GREP - ACK
set grepprg=ack
nmap <silent> <C-N> :cn<CR>zv
nmap <silent> <C-P> :cp<CR>zv
