" bundle configuration
" $ vim -u bundles.vim +BundleInstall +q
" for first installation

set nocompatible
filetype off

set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

Bundle 'gmarik/vundle'
Bundle 'tpope/vim-fugitive'
Bundle 'git://git.wincent.com/command-t.git'
Bundle 'anzaika/go.vim'
Bundle 'sjl/gundo.vim'
Bundle 'othree/html5.vim'
Bundle 'scrooloose/nerdtree'
Bundle 'kien/rainbow_parentheses.vim'
Bundle 'ervandew/supertab'
Bundle 'godlygeek/tabular'
Bundle 'majutsushi/tagbar'
Bundle 'sjl/threesome.vim'
Bundle 'SirVer/ultisnips'
Bundle 'lluchs/vim-c4script'
Bundle 'kchmck/vim-coffee-script'
Bundle 'altercation/vim-colors-solarized'
Bundle 'ap/vim-css-color'
Bundle 'tpope/vim-endwise'
Bundle 'tpope/vim-haml'
Bundle 'nathanaelkane/vim-indent-guides'
Bundle 'michaeljsmith/vim-indent-object'
Bundle 'pangloss/vim-javascript'
"Bundle 'tpope/vim-rails'
Bundle 'wavded/vim-stylus'
Bundle 'tpope/vim-surround'
Bundle 'tpope/vim-unimpaired'

filetype plugin indent on
