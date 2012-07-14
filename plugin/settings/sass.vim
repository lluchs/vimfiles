augroup sasssetings
  au!

  " automatic SASS compile
  " only compile if there is already a css file
  function! AutoSASSMake()
    let filename = expand("%:r") . ".css"
    if filereadable(filename) "&& (localtime() - getftime(filename) > 10)
      call system("sass --update " . expand("%"))
    endif
  endfunction
  autocmd BufWritePost *.sass silent call AutoSASSMake()

augroup END
