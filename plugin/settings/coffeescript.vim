augroup coffeescript
  au!

  " automatic CoffeeScript compile
  " only compile if there is already a js file
  function! AutoCoffeeMake()
    let filename = expand("%:r") . ".js"
    if filereadable(filename) "&& (localtime() - getftime(filename) > 10)
      CoffeeMake! | cwindow
    endif
  endfunction
  autocmd BufWritePost *.coffee silent call AutoCoffeeMake()

augroup END
