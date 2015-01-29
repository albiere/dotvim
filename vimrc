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

" WHEN CURSOR WHEN IN INSERT MODE
if $TERM_PROGRAM =~ "iTerm"
    let &t_SI = "\<Esc>]50;CursorShape=1\x7" " Vertical bar in insert mode
    let &t_EI = "\<Esc>]50;CursorShape=0\x7" " Block in normal mode
endif
