" bundle configuration
" $ vim -u bundles.vim +PlugInstall +qall
" for first installation

set nocompatible
filetype off

call plug#begin('~/.vim/plugged')

Plug 'jtmkrueger/vim-c-cr'
Plug 'tpope/vim-commentary'
Plug 'tpope/vim-fugitive'
Plug 'gregsexton/gitv'
Plug 'mhinz/vim-grepper'
Plug 'scrooloose/nerdtree'
Plug 'kien/rainbow_parentheses.vim'
Plug 'ervandew/supertab'
Plug 'godlygeek/tabular'
Plug 'coderifous/textobj-word-column.vim'
Plug 'lluchs/vim-c4script'
Plug 'altercation/vim-colors-solarized'
Plug 'jamessan/vim-gnupg'
Plug 'morhetz/gruvbox'
Plug 'ludovicchabant/vim-gutentags'
Plug 'tpope/vim-endwise'
Plug 'michaeljsmith/vim-indent-object'
Plug 'elzr/vim-json'
Plug 'bling/vim-airline'
Plug 'tpope/vim-repeat'
Plug 'tpope/vim-tbone'
Plug 'tpope/vim-sleuth'
Plug 'tpope/vim-surround'
Plug 'neomake/neomake'
Plug 'christoomey/vim-tmux-navigator'
Plug 'tpope/vim-unimpaired'
Plug 'lluchs/vim-wren'

" Typescript support
Plug 'Shougo/vimproc.vim', {'do' : 'make', 'for': 'typescript'}
Plug 'Quramy/tsuquyomi', {'for': 'typescript'}

" At the bottom to allow it to be overwritten.
Plug 'sheerun/vim-polyglot'

" fzf doesn't work on Windows
if has("win32")
  Plug 'kien/ctrlp.vim'
else
  Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install' }
  Plug 'junegunn/fzf.vim'
endif

" need python
if has("python")
  Plug 'sjl/gundo.vim'
  Plug 'sjl/splice.vim'
  Plug 'SirVer/ultisnips'
endif

call plug#end()

filetype plugin indent on
