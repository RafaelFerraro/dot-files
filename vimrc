" Before you need to install Vundle plugin manager
" (https://github.com/VundleVim/Vundle.vim)
set nocompatible
filetype off
set rtp+=~/.vim/bundle/Vundle.vim

call vundle#begin()
Plugin 'VundleVim/Vundle.vim'
Plugin 'Kien/ctrlp.vim'
Plugin 'tpope/vim-endwise'
Plugin 'scrooloose/nerdtree'
Plugin 'janko-m/vim-test'
Plugin 'sheerun/vim-polyglot'
Plugin 'vim-airline/vim-airline'
call vundle#end()            " required
filetype plugin indent on    " required

let mapleader = "\<Space>"

nmap <leader>w :w<cr>
nmap <silent> <leader>t :TestNearest<CR>
nmap <silent> <leader>T :TestFile<CR>
nmap <silent> <leader>a :TestSuite<CR>
nmap <silent> <leader>l :TestLast<CR>
nmap <silent> <leader>g :TestVisit<CR>

map <C-n> :NERDTreeToggle<CR>
map <C-f> :NERDTreeFind<CR>
map <C-c> :w !pbcopy<CR>

set tabstop=2
set shiftwidth=2
set expandtab
set autoindent
set hls
set number
set smartindent
set backupdir=/tmp
set directory=/tmp

nmap 0 ^

syntax on

set runtimepath^=~/.vim/bundle/ctrlp.vim

autocmd Syntax * syn match whitespace /\s\+$/ containedin=ALL
highlight whitespace ctermbg=red guibg=red
