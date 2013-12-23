" Vim, not vi
set nocompatible

" ========== Runtimepath Configuration ===========

" Fix runtimepath on Windows
set rtp=$HOME/.vim,$VIM/vimfiles,$VIMRUNTIME,$VIM/vimfiles/after,$HOME/.vim/after

" Load Vundle and bundles configuration
source ~/.vim/bundles.vim

" set directory for lock files
set directory=~/.vim/tmp//

" ================ General Config ================

" syntax highlighting
syntax on

set number                      " Line numbers
set laststatus=2                " Always show the status line
set backspace=indent,eol,start  " Allow backspacing over everything in insert mode
set cursorline                  " Highlight the current line
set scrolloff=3                 " Start scrolling 3 lines away from margins
set wrap linebreak              " Wrap properly at words
set clipboard=unnamed           " Use system clipboard
set mouse=a                     " Enable mouse usage on command line
if has("unix")                                                 
  set ttymouse=xterm2           " Proper mouse support on linux
endif

" Standard Fugitive statusline
set statusline=%<%f\ %h%m%r%{fugitive#statusline()}%=%-14.(%l,%c%V%)\ %P

" Local Leader
let g:maplocalleader = '-'

" ================== Completion ==================

" enable wildmenu for tab-completion
set wildmenu
" configure wildmenu to behave more like bash
set wildmode=list:longest,list:full

" Ignore node.js node_module folders.
set wildignore+=node_modules

" =============== Search Settings ================

set incsearch    " Find next match while typing
set hlsearch     " Highlight search results
set ignorecase   " Ignore case by default
set smartcase    " Override previous setting when typing capital letters

set gdefault     " Substitute globally by default

" ================= Force UTF-8 ==================

if has("multi_byte")
  if &termencoding == ""
    let &termencoding = &encoding
  endif
  set encoding=utf-8
  setglobal fileencoding=utf-8
  "setglobal bomb
  set fileencodings=ucs-bom,utf-8,latin1
endif

" =============== Buffer Options =================

set hidden             " Allow invisible buffers with unsaved changes
set switchbuf=usetab   " Allow jumping to buffers in other tabs

" ================= Indentation ==================

set autoindent
set smartindent
set tabstop=4
set shiftwidth=4

" Display tabs and trailing spaces
set listchars=tab:\ \ ,trail:·

filetype plugin indent on

" ========= Automatically apply changes ==========

augroup autoapply
  autocmd!
  au BufWritePost ?vimrc source %
augroup END

