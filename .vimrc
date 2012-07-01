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

let g:solarized_italic=0
colorscheme solarized
call togglebg#map("<F5>")

" allow backspacing over everything in insert mode
set backspace=indent,eol,start

" use system clipboard
set clipboard=unnamed

" enable wildmenu for tab-completion
set wildmenu
" configure wildmenu to behave more like bash
set wildmode=list:longest,list:full
" SuperTab context-sensitive completion
let g:SuperTabDefaultCompletionType = "context"

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

" Faster Esc
inoremap jk <esc>

" More logical yanking
noremap Y y$

" Shortcut to rapidly toggle `set list`
nmap <leader>l :set list!<CR>
 
" Smart way to move btw. windows
map <C-j> <C-W>j
map <C-k> <C-W>k
map <C-h> <C-W>h
map <C-l> <C-W>l

" Faster line movement
noremap H ^
noremap L $

" Use the arrows to something usefull
map <right> :bn<cr>
map <left> :bp<cr>

" Tab configuration
map <leader>tn :tabnew<cr>
map <leader>te :tabedit
map <leader>tc :tabclose<cr>
map <leader>tm :tabmove

" When pressing <leader>cd switch to the directory of the open buffer
map <leader>cd :cd %:p:h<cr>
map <leader>lcd :lcd %:p:h<cr>

" Command-T
nnoremap <silent> <C-t> :CommandT<CR>
nnoremap <leader>tf :CommandTFlush<CR>

" Gundo
nnoremap <leader>g :GundoToggle<CR>

" NERDTree
nnoremap <leader>n :NERDTreeToggle<CR>

" Tagbar
nnoremap <F8> :TagbarToggle<CR>

" Rainbow Parentheses
nnoremap <leader>R :RainbowParenthesesToggleAll<CR>

" show syntax
:map <F3> :echo "hi<" . synIDattr(synID(line("."),col("."),1),"name") . '> trans<' . synIDattr(synID(line("."),col("."),0),"name") . "> lo<" . synIDattr(synIDtrans(synID(line("."),col("."),1)),"name") . ">"<CR>

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
augroup localsettings
  autocmd!
  autocmd FileType vim,ruby,coffee,yaml,sass setlocal sts=2 sw=2 expandtab
  autocmd FileType ruby setlocal noballooneval
augroup END

augroup autocompile
  autocmd!
  " automatic CoffeeScript compile
  " only compile if there is already a js file
  function! AutoCoffeeMake()
    let filename = expand("%:r") . ".js"
    if filereadable(filename) "&& (localtime() - getftime(filename) > 10)
      CoffeeMake! | cwindow
    endif
  endfunction
  autocmd BufWritePost *.coffee silent call AutoCoffeeMake()

  " automatic SASS compile
  " only compile if there is already a css file
  function! AutoSASSMake()
    let filename = expand("%:r") . ".css"
    if filereadable(filename) "&& (localtime() - getftime(filename) > 10)
      call system("sass --update " . expand("%"))
    endif
  endfunction
  autocmd BufWritePost *.sass silent call AutoSASSMake()

  " automatic Stylus compile
  " only compile if there is already a css file
  function! AutoStylusMake()
    let filename = expand("%:r") . ".css"
    if filereadable(filename)
      call system("stylus -u nib " . expand("%"))
    endif
  endfunction
  autocmd BufWritePost *.styl silent call AutoStylusMake()

  " easier vimrc editing
  nmap <leader>ev :sp $MYVIMRC<cr>
  au BufWritePost ?vimrc source %
augroup END

