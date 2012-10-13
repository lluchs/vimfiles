" Solarized colorscheme settings

" Italics don't work well with bitmap fonts
let g:solarized_italic=0
" Fix background color
let g:solarized_termtrans=1

" enable colorscheme
set background=dark
colorscheme solarized

" Plugin to switch between light and dark backgrounds
call togglebg#map("<F5>")

