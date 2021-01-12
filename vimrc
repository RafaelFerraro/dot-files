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
"Plugin 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
"Plugin 'junegunn/fzf.vim'
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
let g:ctrlp_map = '<c-p>'
let g:ctrlp_cmd = 'CtrlP'

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

" --column: Show column number
" --line-number: Show line number
" --no-heading: Do not show file headings in results
" --fixed-strings: Search term as a literal string
" --ignore-case: Case insensitive search
" --no-ignore: Do not respect .gitignore, etc...
" --hidden: Search hidden files and folders
" --follow: Follow symlinks
" --glob: Additional conditions for search (in this case ignore everything in the .git/ folder)
" --color: Search color options
"command! -bang -nargs=* Find call fzf#vim#grep('rg --column --line-number --no-heading --fixed-strings --ignore-case --no-ignore --glob "!.git/*" --color "always" '.shellescape(<q-args>), 1, <bang>0)
