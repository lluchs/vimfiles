augroup rubysettings
  au!
  if has('balloon_eval')
    autocmd FileType ruby setlocal noballooneval
  endif
augroup END
