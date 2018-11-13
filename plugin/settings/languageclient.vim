let g:LanguageClient_serverCommands = {
\ 'cpp': ['cquery', '--log-file='.expand('~/.vim/tmp/cquery.log'), '--init={"cacheDirectory":"'.expand('~/.vim/tmp/cquery').'"}']
\ }

nn <silent> <Leader><Leader>c :call LanguageClient_contextMenu()<cr>
nn <silent> <Leader><Leader>d :call LanguageClient_textDocument_definition()<cr>
nn <silent> <Leader><Leader>r :call LanguageClient_textDocument_references()<cr>
nn <silent> <Leader><Leader>= :call LanguageClient_textDocument_formatting()<cr>
nn <silent> <Leader><Leader>k :call LanguageClient_textDocument_hover()<cr>
nn          <Leader><Leader>R :call LanguageClient_textDocument_rename()<cr>
