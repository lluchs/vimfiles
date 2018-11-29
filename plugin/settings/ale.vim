"let g:ale_completion_enabled = 1
let g:ale_set_balloons = 1

let g:ale_linters = {
\ 'cpp': ['cquery', 'cpplint'],
\ 'rust': ['rls'],
\ }

let g:ale_rust_rls_toolchain = 'stable'

nn <silent> <Leader><Leader>d :ALEGoToDefinition<CR>
nn <silent> <Leader><Leader>r :ALEFindReferences<CR>
nn <silent> <Leader><Leader>k :ALEHover<CR>
nn <silent> <Leader><Leader>s :ALESymbolSearch
