" deoplete completion

function s:start_deoplete()
  call deoplete#enable()
  call deoplete#custom#option({
    \ 'auto_complete_delay': 200,
    \ })
endfunction

map <Leader>d :call <SID>start_deoplete()<CR>
