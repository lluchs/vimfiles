" Vim, not vi
set nocompatible

" ========== Runtimepath Configuration ===========

" Fix runtimepath on Windows
set rtp=$HOME/.vim,$VIM/vimfiles,$VIMRUNTIME,$VIM/vimfiles/after,$HOME/.vim/after

" Load bundles configuration
source ~/.vim/bundles.vim

" set directory for lock files
set directory=~/.vim/tmp//

" ================ General Config ================

if has("termguicolors")
  let &t_8f = "\<Esc>[38;2;%lu;%lu;%lum"
  let &t_8b = "\<Esc>[48;2;%lu;%lu;%lum"
  set termguicolors
endif

" undercurl
let &t_Cs = "\e[4:3m"
let &t_Ce = "\e[4:0m"

set background=dark
silent! colorscheme gruvbox

" syntax highlighting
syntax on

set number                      " Line numbers
set laststatus=2                " Always show the status line
set backspace=indent,eol,start  " Allow backspacing over everything in insert mode
set cursorline                  " Highlight the current line
set scrolloff=3                 " Start scrolling 3 lines away from margins
set wrap linebreak              " Wrap properly at words
set clipboard=unnamed           " Use system clipboard
set title                       " Set terminal title
set mouse=a                     " Enable mouse usage on command line
if has("unix") && !has("nvim")
  if has("mouse_sgr")           " Proper mouse support on linux
      set ttymouse=sgr          " Make mouse clicks beyond the 220th column work
  else
      set ttymouse=xterm2
  end
endif

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

" ============= Standard keybindings =============

" Faster Esc
inoremap jk <esc>

" More logical yanking
noremap Y y$

" Select pasted text in visual mode
nnoremap <expr> gp '`[' . strpart(getregtype(), 0, 1) . '`]'

" Clear search highlighting
nmap <leader><space> :noh<CR>

" Shortcut to rapidly toggle `set list`
nmap <leader>l :set list!<CR>

" Faster line movement
noremap H ^
noremap L $

" Tab configuration
map <leader>tn :tabnew<cr>
map <leader>te :tabedit
map <leader>tc :tabclose<cr>
map <leader>tm :tabmove

" When pressing <leader>cd switch to the directory of the open buffer
map <leader>cd :cd %:p:h<cr>
map <leader>lcd :lcd %:p:h<cr>

" show syntax
map <F4> :echo "hi<" . synIDattr(synID(line("."),col("."),1),"name") . '> trans<' . synIDattr(synID(line("."),col("."),0),"name") . "> lo<" . synIDattr(synIDtrans(synID(line("."),col("."),1)),"name") . ">"<CR>

" easier vimrc editing
nmap <leader>ev :sp $MYVIMRC<cr>
