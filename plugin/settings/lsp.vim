if executable('cquery')
   au User lsp_setup call lsp#register_server({
      \ 'name': 'cquery',
      \ 'cmd': {server_info->['cquery']},
      \ 'root_uri': {server_info->lsp#utils#path_to_uri(lsp#utils#find_nearest_parent_file_directory(lsp#utils#get_buffer_path(), 'compile_commands.json'))},
      \ 'initialization_options': { 'cacheDirectory': expand('~/.vim/tmp/cquery') },
      \ 'whitelist': ['c', 'cpp', 'objc', 'objcpp', 'cc'],
      \ })
endif

let g:lsp_signs_enabled = 1
let g:lsp_diagnostics_echo_cursor = 1
highlight link LspErrorText GruvboxRedSign

nn <silent> <Leader><Leader>d :LspDefinition<cr>
nn <silent> <Leader><Leader>r :LspReferences<cr>
nn <silent> <Leader><Leader>= :LspDocumentFormat<cr>
nn <silent> <Leader><Leader>k :LspHover<cr>
nn          <Leader><Leader>R :LspRename<cr>
