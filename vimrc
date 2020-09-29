" VIM-PLUG
if empty(glob('~/.vim/autoload/plug.vim'))
  silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs
        \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

call plug#begin('~/.vim/plugged')

Plug 'junegunn/fzf'
Plug 'junegunn/fzf.vim'
Plug 'tpope/vim-surround'
Plug 'preservim/nerdcommenter'

call plug#end() " Automatially calls 'filetype plugin indent on' and 'syntax enable'

" NERD COMMENTER
nmap <C-_> <plug>NERDCommenterToggle
vmap <C-_> <plug>NERDCommenterToggle<CR>gv

" GENERAL SETUP
set number
set cursorline

set backspace=indent,eol,start
set tabstop=2 " Number of spaces a tab counts
set shiftwidth=2 " Number of spaces when << >> are pressed
set expandtab " Hitting tab results in spaces
set clipboard+=unnamed

set undodir=~/.vimdid                                                                                                                    
set undofile " Store history in disk

nnoremap confr :source $MYVIMRC<CR>
nnoremap <leader>ve :e $MYVIMRC<CR> " Edit vimrc configuration file
nnoremap <leader>vr :source $MYVIMRC<CR> " Reload vimrc configuration file

autocmd InsertEnter,InsertLeave * set cul! " Switch cursor line

" THEMES
packadd! dracula_pro

let g:dracula_colorterm = 0
let g:dracula_italic = 0

colorscheme dracula_pro

" TAGS
set tags+=./tags

" TREE CONFIGURATION
let g:netrw_liststyle=3
nmap <C-k> :Explore<cr>

" FZF
set rtp+=/usr/local/opt/fzf
nmap <C-t> :Files<cr>
nmap <C-p> :Files<cr>
