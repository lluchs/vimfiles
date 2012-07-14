augroup stylussettings
  au!

  " automatic Stylus compile
  " only compile if there is already a css file
  function! AutoStylusMake()
    let filename = expand("%:r") . ".css"
    if filereadable(filename)
      call system("stylus -u nib " . expand("%"))
    endif
  endfunction
  autocmd BufWritePost *.styl silent call AutoStylusMake()

augroup END
