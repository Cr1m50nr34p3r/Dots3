autocmd winnew :term  wincmd l

" Text
autocmd filetype txt setlocal spell nonu nornu wrap
autocmd filetype markdown.pandoc setlocal spell nonu nornu wrap
autocmd filetype org setlocal spell nonu nornu wrap
autocmd! user goyoenter limelight
autocmd! user goyoleave limelight!

" Python
autocmd filetype python setlocal omnifunc=v:lua.vim.lsp.omnifunc
autocmd filetype python nnoremap <buffer> <f5> :w<cr>:exec '!clear'<cr>:exec '!python3' shellescape(expand('%:p'), 1)<cr>
autocmd filetype python :%s/\s*$//g

" MARKDOWN
augroup pandoc_syntax
    au! BufNewFile,BufFilePre,BufRead *.md set filetype=markdown.pandoc
augroup END
