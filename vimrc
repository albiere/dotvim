call pathogen#infect()

" GENERAL SETUP
filetype plugin indent on
syntax enable

set background=dark
set number
set cursorline

set expandtab
set shiftwidth=2
set softtabstop=2
set backspace=indent,eol,start

" SOLARIZED THEMES
let g:solarized_termtrans=1
colorscheme solarized

" TAGS
set tags+=./tags

" WHEN CURSOR WHEN IN INSERT MODE
if &term == 'xterm-256color' || &term == 'screen-256color'
  let &t_SI = "\<Esc>[5 q"
  let &t_EI = "\<Esc>[1 q"
endif

if exists('$TMUX')
  let &t_EI = "\<Esc>Ptmux;\<Esc>\<Esc>]50;CursorShape=0\x7\<Esc>\\"
  let &t_SI = "\<Esc>Ptmux;\<Esc>\<Esc>]50;CursorShape=1\x7\<Esc>\\"
endif

" TREE CONFIGURATION
let g:netrw_liststyle=3
let mapleader=" "
map <leader>k :Explore<cr>

" REMAP FOR EMMET (DEFAULT)
let g:user_emmet_leader_key='<C-Y>'

" AIRLINE CONFIGURATION
set laststatus=2
let g:airline_powerline_fonts = 1

" THE SILVER SEARCHER
nmap <silent> <C-N> :cn<CR>zv
nmap <silent> <C-P> :cp<CR>zv

if executable('ag')
  set grepprg=ag\ --nogroup\ --nocolor
  
  " CTRL-P CONFIG
  let g:ctrlp_user_command = 'ag %s -l --nocolor -g ""'
  let g:ctrlp_use_caching = 0
endif

" SYNTASTIC RUBOCOP

set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0
let g:syntastic_quiet_messages = 1
