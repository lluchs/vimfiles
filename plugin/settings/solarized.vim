" Solarized colorscheme settings

" Enable italics.
let g:solarized_italic=1
" Fix background color
let g:solarized_termtrans=1

" enable colorscheme
set t_Co=16
set background=dark
silent! colorscheme solarized

" Plugin to switch between light and dark backgrounds
silent! call togglebg#map("<F5>")

