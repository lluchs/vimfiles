" Vim, not vi
set nocompatible

" Fix runtimepath on Windows
set rtp=$HOME/.vim,$VIM/vimfiles,$VIMRUNTIME,$VIM/vimfiles/after,$HOME/.vim/after

" load Vundle and bundles configuration
source ~/.vim/bundles.vim

" set directory for lock files
set directory=~/.vim/tmp//

" syntax highlighting
syntax on

language messages en
set ruler
set number
set laststatus=2
set statusline=%<%f\ %h%m%r%{fugitive#statusline()}%=%-14.(%l,%c%V%)\ %P

set cursorline
set scrolloff=3

set wrap linebreak

" allow backspacing over everything in insert mode
set backspace=indent,eol,start

" use system clipboard
set clipboard=unnamed

" enable wildmenu for tab-completion
set wildmenu
" configure wildmenu to behave more like bash
set wildmode=list:longest,list:full

" Searching
set incsearch
set hlsearch
nmap <leader><space> :noh<CR>
set ignorecase
set smartcase
set gdefault

" UTF-8
if has("multi_byte")
  if &termencoding == ""
    let &termencoding = &encoding
  endif
  set encoding=utf-8
  setglobal fileencoding=utf-8
  "setglobal bomb
  set fileencodings=ucs-bom,utf-8,latin1
endif

" Specify the behavior when switching between buffers 
set hidden
set switchbuf=usetab
"set showtabline=2 " always

" Use the same symbols as TextMate for tabstops and EOLs
set listchars=tab:▸\ ,eol:¬

" whitespace preferences
set autoindent
set smartindent
filetype plugin indent on
set ts=4 sw=4

augroup autocompile
  autocmd!
  au BufWritePost ?vimrc source %
augroup END

