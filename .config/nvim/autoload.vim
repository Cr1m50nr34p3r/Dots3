autocmd WinNew :term  wincmd L
" Python
autocmd FileType python setlocal omnifunc=v:lua.vim.lsp.omnifunc
autocmd FileType python nnoremap <buffer> <F5> :w<cr>:exec '!clear'<cr>:exec '!python3' shellescape(expand('%:p'), 1)<cr>
autocmd Filetype python :%s/\s*$//g

" Text Editing
autocmd FileType txt setlocal spell nonu nornu wrap
autocmd FileType markdown.pandoc setlocal spell nonu nornu wrap
autocmd FileType org setlocal spell nonu nornu wrap
autocmd! User GoyoEnter Limelight
autocmd! User GoyoLeave Limelight!
