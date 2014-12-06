" bundle configuration
" $ vim -u bundles.vim +PluginInstall +qall
" for first installation

set nocompatible
filetype off

" Vundle installation will fail with fish.
if &shell =~ '/fish$'
  set shell=/bin/bash
endif

set rtp+=~/.vim/bundle/vundle/
call vundle#begin()

Plugin 'gmarik/vundle'
Plugin 'mileszs/ack.vim'
Plugin 'jtmkrueger/vim-c-cr'
Plugin 'tpope/vim-commentary'
Plugin 'kien/ctrlp.vim'
Plugin 'tpope/vim-fugitive'
Plugin 'gregsexton/gitv'
Plugin 'chikamichi/mediawiki.vim'
Plugin 'scrooloose/nerdtree'
Plugin 'kien/rainbow_parentheses.vim'
Plugin 'ervandew/supertab'
Plugin 'godlygeek/tabular'
Plugin 'majutsushi/tagbar'
Plugin 'coderifous/textobj-word-column.vim'
Plugin 'lluchs/vim-c4script'
Plugin 'altercation/vim-colors-solarized'
Plugin 'ap/vim-css-color'
Plugin 'tpope/vim-endwise'
Plugin 'nathanaelkane/vim-indent-guides'
Plugin 'michaeljsmith/vim-indent-object'
Plugin 'elzr/vim-json'
Plugin 'bling/vim-airline'
"Plugin 'tpope/vim-rails'
Plugin 'tpope/vim-repeat'
Plugin 'tpope/vim-sleuth'
Plugin 'justinmk/vim-sneak'
Plugin 'tpope/vim-surround'
Plugin 'christoomey/vim-tmux-navigator'
Plugin 'tpope/vim-unimpaired'

" At the bottom to allow it to be overwritten.
Plugin 'sheerun/vim-polyglot'

" need python
if has("python")
  Plugin 'sjl/gundo.vim'
  Plugin 'sjl/splice.vim'
  Plugin 'SirVer/ultisnips'
endif

call vundle#end()

filetype plugin indent on
