let mapleader = " "

syntax on "parser
filetype plugin indent on

set number
set relativenumber

" nvim defaults
set tabstop=4
set shiftwidth=4
set expandtab
set hlsearch "hilight search, :nohl to remove
set t_Co=256 "terminal colors
set wildmenu " auto completion, trigger with <C-n>


let s:VIM_DIR = fnamemodify($MYVIMRC, ':h')
if filereadable(s:VIM_DIR . '/colors/wallbash.vim')
    colorscheme wallbash
endif

call plug#begin("~/.vim/plugged")
" Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
call plug#end()

nnoremap <leader>pv :Vex<CR>
nnoremap <leader><CR> :so ~/.vim/vimrc \| echo "✅ vimrc reloaded"<CR>
