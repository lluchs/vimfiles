" Faster Esc
inoremap jk <esc>

" More logical yanking
noremap Y y$

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
