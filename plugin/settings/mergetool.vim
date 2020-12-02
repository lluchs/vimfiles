" samoshkin/vim-mergetool

" Default layout
let g:mergetool_layout = 'mr'
" Default contents of merged pane
let g:mergetool_prefer_revision = 'local'

" Bindings

" Enable/disable merge mode
nmap <leader>mt <plug>(MergetoolToggle)

" Layout: Merged/Remote (default)
nnoremap <silent> <leader>mr :call mergetool#toggle_layout('mr')<CR>
" Layout: Merged/Base 
nnoremap <silent> <leader>mb :call mergetool#toggle_layout('mb')<CR>
" Layout: Merged/Remote + Base at bottom ("all")
nnoremap <silent> <leader>ma :call mergetool#toggle_layout('mr,b')<CR>
" Layout: Local/Base 
nnoremap <silent> <leader>lb :call mergetool#toggle_layout('lb')<CR>
" Layout: Base/Remote
nnoremap <silent> <leader>br :call mergetool#toggle_layout('br')<CR>
