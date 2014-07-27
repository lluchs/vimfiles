" bundle configuration
" $ vim -u bundles.vim +BundleInstall +q
" for first installation

set nocompatible
filetype off

" Vundle installation will fail with fish.
if &shell =~ '/fish$'
  set shell=/bin/bash
endif

set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

Bundle 'gmarik/vundle'
Bundle 'mileszs/ack.vim'
Bundle 'jtmkrueger/vim-c-cr'
Bundle 'tpope/vim-commentary'
Bundle 'kien/ctrlp.vim'
Bundle 'tpope/vim-fugitive'
Bundle 'gregsexton/gitv'
Bundle 'chikamichi/mediawiki.vim'
Bundle 'scrooloose/nerdtree'
Bundle 'dsawardekar/portkey'
Bundle 'kien/rainbow_parentheses.vim'
Bundle 'ervandew/supertab'
Bundle 'godlygeek/tabular'
Bundle 'majutsushi/tagbar'
Bundle 'coderifous/textobj-word-column.vim'
Bundle 'lluchs/vim-c4script'
Bundle 'altercation/vim-colors-solarized'
Bundle 'ap/vim-css-color'
Bundle 'tpope/vim-endwise'
Bundle 'nathanaelkane/vim-indent-guides'
Bundle 'michaeljsmith/vim-indent-object'
Bundle 'elzr/vim-json'
Bundle 'maciakl/vim-neatstatus'
"Bundle 'tpope/vim-rails'
Bundle 'tpope/vim-repeat'
Bundle 'tpope/vim-sleuth'
Bundle 'justinmk/vim-sneak'
Bundle 'tpope/vim-surround'
Bundle 'christoomey/vim-tmux-navigator'
Bundle 'tpope/vim-unimpaired'

" At the bottom to allow it to be overwritten.
Bundle 'sheerun/vim-polyglot'

" need python
if has("python")
  Bundle 'sjl/gundo.vim'
  Bundle 'sjl/splice.vim'
  Bundle 'SirVer/ultisnips'
endif

filetype plugin indent on
