" Various commands

" Shows a vimdiff with the original file (:h :DiffOrig)
command DiffOrig vert new | set bt=nofile | r ++edit # | 0d_
	\ | diffthis | wincmd p | diffthis

" Allow saving files with sudo.
cmap w!! w !sudo tee > /dev/null %
