" CtrlP

" Use git for the file listing.
let g:ctrlp_user_command = ['.git', 'cd %s && git ls-files']
