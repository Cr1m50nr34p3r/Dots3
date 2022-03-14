
" Coc
" Install coc-spell-checker
" Install coc-prettier
" Install coc-git
" Install coc-pyright
" Install coc-json
" Install coc-docker
" Install coc-yaml
" Install coc-rust-analyzer
" TextEdit might fail if hidden is not set.
" Always show the signcolumn, otherwise it would shift the text each time
" diagnostics appear/become resolved.
if has("nvim-0.5.0") || has("patch-8.1.1564")
  " Recently vim can merge signcolumn and number column into one
  set signcolumn=number
else
  set signcolumn=yes
endif
function! s:check_back_space() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~# '\s'
endfunction
function! s:show_documentation()
  if (index(['vim','help'], &filetype) >= 0)
    execute 'h '.expand('<cword>')
  elseif (coc#rpc#ready())
    call CocActionAsync('doHover')
  else
    execute '!' . &keywordprg . " " . expand('<cword>')
  endif
endfunction
" Applying codeAction to the selected region.
" Example: `<leader>aap` for current paragraph
" Add `:Format` command to format current buffer.
command! -nargs=0 Format :call CocActionAsync('format')
" Add `:Fold` command to fold current buffer.
command! -nargs=? Fold :call     CocAction('fold', <f-args>)
" Add `:OR` command for organize imports of the current buffer.
command! -nargs=0 OR   :call     CocActionAsync('runCommand', 'editor.action.organizeImport')

autocmd cursorhold * silent call cocactionasync('highlight')

augroup mygroup
  autocmd!
  " setup formatexpr specified filetype(s).
  autocmd filetype typescript,json setl formatexpr=cocaction('formatselected')
  " update signature help on jump placeholder.
  autocmd user cocjumpplaceholder call cocactionasync('showsignaturehelp')
augroup end
set statusline^=%{coc#status()}%{get(b:,'coc_current_function','')}
