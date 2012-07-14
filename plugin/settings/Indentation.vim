" Custom indentation settings for certain file types
augroup CustionIndentation
  au!
  autocmd FileType vim,ruby,coffee,yaml,sass,stylus setlocal sts=2 sw=2 expandtab
augroup END
