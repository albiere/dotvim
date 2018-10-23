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

" GO IDENTATION SETUP
autocmd FileType go setlocal tabstop=8 softtabstop=0 shiftwidth=8 noexpandtab

" SYNTAX
syntax enable

if &term == 'xterm-256color' || &term == 'screen-256color'
  let &t_SI = "\<Esc>[5 q"
  let &t_EI = "\<Esc>[1 q"
endif

" SOLARIZED THEMES
let g:solarized_termtrans=1
colorscheme solarized

" TAGS
set tags+=./tags

" TREE CONFIGURATION
let g:netrw_liststyle=3
let mapleader=" "
map <leader>k :Explore<cr>

" REMAP FOR EMMET (DEFAULT)
let g:user_emmet_leader_key='<C-Y>'

" AIRLINE CONFIGURATION
set laststatus=2

" THE SILVER SEARCHER
nmap <silent> <C-N> :cn<CR>zv
nmap <silent> <C-P> :cp<CR>zv

if executable('ag')
  set grepprg=ag\ --nogroup\ --nocolor
  
  " CTRL-P CONFIG
  let g:ctrlp_user_command = 'ag %s -l --nocolor -g ""'
  let g:ctrlp_use_caching = 0
endif

" VIM GO
let g:go_fmt_command = "goimports"

" ALE CONFIG
let g:ale_linters = {'go': ['gofmt', 'go lint', 'go vet', 'go build']}
