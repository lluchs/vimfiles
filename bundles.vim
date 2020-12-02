" bundle configuration
" $ vim -u bundles.vim +PlugInstall +qall
" for first installation

set nocompatible
filetype off

call plug#begin('~/.vim/plugged')

Plug 'metakirby5/codi.vim'
Plug 'tpope/vim-commentary'
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-speeddating'
Plug 'samoshkin/vim-mergetool'
Plug 'gregsexton/gitv'
Plug 'nathangrigg/vim-beancount'
Plug 'mhinz/vim-grepper'
Plug 'scrooloose/nerdtree', { 'on': ['NERDTreeToggle'] }
Plug 'kien/rainbow_parentheses.vim'
Plug 'glts/vim-radical'
  Plug 'glts/vim-magnum'
Plug 'godlygeek/tabular'
Plug 'coderifous/textobj-word-column.vim'
Plug 'lluchs/vim-c4script'
Plug 'jamessan/vim-gnupg'
Plug 'morhetz/gruvbox'
Plug 'protesilaos/tempus-themes-vim'
Plug 'ludovicchabant/vim-gutentags'
Plug 'tpope/vim-endwise'
Plug 'fatih/vim-go'
Plug 'michaeljsmith/vim-indent-object'
Plug 'elzr/vim-json'
Plug 'bling/vim-airline'
Plug 'tpope/vim-obsession'
Plug 'tpope/vim-repeat'
Plug 'tpope/vim-tbone'
Plug 'tpope/vim-sleuth'
Plug 'tpope/vim-surround'
Plug 'tpope/vim-unimpaired'
Plug 'lluchs/vim-wren'
Plug 'vimwiki/vimwiki'
Plug 'jceb/vim-orgmode'
Plug 'ziglang/zig.vim'
Plug 'w0rp/ale'

" Typescript support
Plug 'Shougo/vimproc.vim', {'do' : 'make', 'for': 'typescript'}
Plug 'Quramy/tsuquyomi', {'for': 'typescript'}

" Completion
if has('nvim')
  Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
else
  Plug 'Shougo/deoplete.nvim'
  Plug 'roxma/nvim-yarp'
  Plug 'roxma/vim-hug-neovim-rpc'
endif
Plug 'tbodt/deoplete-tabnine', { 'do': './install.sh' }

" At the bottom to allow it to be overwritten.
Plug 'sheerun/vim-polyglot'

" fzf doesn't work on Windows
if has("win32")
  Plug 'kien/ctrlp.vim'
else
  Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --bin' }
  Plug 'junegunn/fzf.vim'
endif

" need python
if has("python")
  Plug 'sjl/gundo.vim'
  Plug 'sjl/splice.vim'
endif

call plug#end()

filetype plugin indent on
