
"PANES
nnoremap <silent> <leader>h :wincmd h<CR> 
nnoremap <silent> <leader>j :wincmd j<CR>
nnoremap <silent> <leader>k :wincmd k<CR>
nnoremap <silent> <leader>l :wincmd l<CR>
nnoremap <silent> <leader>p :wincmd p<CR>
nnoremap <silent> <leader>H :wincmd H<CR> 
nnoremap <silent> <leader>J :wincmd J<CR>
nnoremap <silent> <leader>K :wincmd K<CR>
nnoremap <silent> <leader>L :wincmd L<CR>
nnoremap <silent> <leader>R :wincmd R<CR>
nnoremap <silent> <Leader>+ :vertical resize +5<CR>
nnoremap <silent> <Leader>- :vertical resize -5<CR>
nnoremap <silent> <leader>wv :vnew<CR>
nnoremap <silent> <leader>wh :split<CR>
nnoremap <silent> <leader>wo :only<CR>
nnoremap <silent> <leader>wc :close<CR>

" Nvim tree
nnoremap <silent> <leader>t :NvimTreeToggle<CR>
nnoremap <silent> <leader>r :NvimTreeRefresh<CR>
nnoremap <silent> <leader>n :NvimTreeFindFile<CR>

" github
nnoremap <silent> <leader>gs :G<CR>
nnoremap <silent> <leader>gc :Git commit<CR>
nnoremap <silent> <leader>gp :Git push<CR>

" buffers
nnoremap <silent><C-t> :enew<CR>
nnoremap <silent><C-w> :bd<CR>
nnoremap <silent><silent> <leader>tl :BufferLineCycleNext<CR>
nnoremap <silent><silent> <leader>th :BufferLineCyclePrev<CR>
" These commands will move the current buffer backwards or forwards in the bufferline
nnoremap <silent><C-t>L :BufferLineMoveNext<CR>
nnoremap <silent><C-t>H :BufferLineMovePrev<CR>
" These commands will sort buffers by directory, language, or a custom criteria
nnoremap <silent>be :BufferLineSortByExtension<CR>
nnoremap <silent>bd :BufferLineSortByDirectory<CR>
nnoremap <silent><C-t>s :lua require'bufferline'.sort_buffers_by(function (buf_a, buf_b) return buf_a.id < buf_b.id end)<CR>

" Completion
" Use tab for trigger completion with characters ahead and navigate.
" NOTE: Use command ':verbose imap <tab>' to make sure tab is not mapped by
" other plugin before putting this into your config.
inoremap <silent><expr> <TAB>
      \ pumvisible() ? "\<C-n>" :
      \ <SID>check_back_space() ? "\<TAB>" :
      \ coc#refresh()
inoremap <expr><S-TAB> pumvisible() ? "\<C-p>" : "\<C-h>"
" Use <c-space> to trigger completion.
if has('nvim')
  inoremap <silent><expr> <c-space> coc#refresh()
else
  inoremap <silent><expr> <c-@> coc#refresh()
endif
" Make <CR> auto-select the first completion item and notify coc.nvim to
" format on enter, <cr> could be remapped by other vim plugin
inoremap <silent><expr> <cr> pumvisible() ? coc#_select_confirm()
                              \: "\<C-g>u\<CR>\<c-r>=coc#on_enter()\<CR>"
" Use `[g` and `]g` to navigate diagnostics
" Use `:CocDiagnostics` to get all diagnostics of current buffer in location list.
nmap <silent> [g <Plug>(coc-diagnostic-prev)
nmap <silent> ]g <Plug>(coc-diagnostic-next)
" GoTo code navigation.
nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gy <Plug>(coc-type-definition)
nmap <silent> gi <Plug>(coc-implementation)
nmap <silent> gr <Plug>(coc-references)
" Use K to show documentation in preview window.
nnoremap <silent> K :call <SID>show_documentation()<CR>
" Highlight the symbol and its references when holding the cursor.
" Symbol renaming.
nmap <leader>rn <Plug>(coc-rename)
" Formatting selected code.
xmap <leader>f  <Plug>(coc-format-selected)
nmap <leader>f  <Plug>(coc-format-selected)
xmap <leader>a  <Plug>(coc-codeaction-selected)
nmap <leader>a  <Plug>(coc-codeaction-selected)
" Remap keys for applying codeAction to the current buffer.
nmap <leader>ac  <Plug>(coc-codeaction)
" Apply AutoFix to problem on the current line.
nmap <leader>qf  <Plug>(coc-fix-current)
" Run the Code Lens action on the current line.
nmap <leader>cl  <Plug>(coc-codelens-action)
" Map function and class text objects
" NOTE: Requires 'textDocument.documentSymbol' support from the language server.
xmap if <Plug>(coc-funcobj-i)
omap if <Plug>(coc-funcobj-i)
xmap af <Plug>(coc-funcobj-a)
omap af <Plug>(coc-funcobj-a)
xmap ic <Plug>(coc-classobj-i)
omap ic <Plug>(coc-classobj-i)
xmap ac <Plug>(coc-classobj-a)
omap ac <Plug>(coc-classobj-a)
" Remap <C-f> and <C-b> for scroll float windows/popups.
if has('nvim-0.4.0') || has('patch-8.2.0750')
  nnoremap <silent><nowait><expr> <C-f> coc#float#has_scroll() ? coc#float#scroll(1) : "\<C-f>"
  nnoremap <silent><nowait><expr> <C-b> coc#float#has_scroll() ? coc#float#scroll(0) : "\<C-b>"
  inoremap <silent><nowait><expr> <C-f> coc#float#has_scroll() ? "\<c-r>=coc#float#scroll(1)\<cr>" : "\<Right>"
  inoremap <silent><nowait><expr> <C-b> coc#float#has_scroll() ? "\<c-r>=coc#float#scroll(0)\<cr>" : "\<Left>"
  vnoremap <silent><nowait><expr> <C-f> coc#float#has_scroll() ? coc#float#scroll(1) : "\<C-f>"
  vnoremap <silent><nowait><expr> <C-b> coc#float#has_scroll() ? coc#float#scroll(0) : "\<C-b>"
endif
" Use CTRL-S for selections ranges.
" Requires 'textDocument/selectionRange' support of language server.
nmap <silent> <C-s> <Plug>(coc-range-select)
xmap <silent> <C-s> <Plug>(coc-range-select)
" Show all diagnostics.
nnoremap <silent><nowait> <space>a  :<C-u>CocList diagnostics<cr>
" Manage extensions.
nnoremap <silent><nowait> <space>e  :<C-u>CocList extensions<cr>
" Show commands.
nnoremap <silent><nowait> <space>c  :<C-u>CocList commands<cr>
" Find symbol of current document.
nnoremap <silent><nowait> <space>o  :<C-u>CocList outline<cr>
" Search workspace symbols.
nnoremap <silent><nowait> <space>s  :<C-u>CocList -I symbols<cr>
" Do default action for next item.
nnoremap <silent><nowait> <space>j  :<C-u>CocNext<CR>
" Do default action for previous item.
nnoremap <silent><nowait> <space>k  :<C-u>CocPrev<CR>
" Resume latest coc list.
nnoremap <silent><nowait> <space>p  :<C-u>CocListResume<CR>

" Debugger
nnoremap <silent> <Leader>dd :call vimspector#Launch()<CR>
nnoremap <silent> <Leader>de :call vimspector#Reset()<CR>
nnoremap <silent> <Leader>dc :call vimspector#Continue()<CR>
nnoremap <silent> <Leader>dt :call vimspector#ToggleBreakpoint()<CR>
nnoremap <silent> <Leader>dT :call vimspector#ClearBreakpoints()<CR>
nmap <silent> <Leader>dk <Plug>VimspectorRestart
nmap <silent> <Leader>dh <Plug>VimspectorStepOut
nmap <silent> <Leader>dl <Plug>VimspectorStepInto
nmap <silent> <Leader>dj <Plug>VimspectorStepOver

" UNDOTREE
nnoremap <silent> <leader>u :UndotreeShow<CR>

" SEARCHING
nnoremap <silent> <leader>ps :Rg<SPACE>
nnoremap <silent> <leader>ff <cmd>lua require('telescope.builtin').find_files({hidden=true,cwd='~'})<cr>
nnoremap <silent> <leader>fr <cmd>lua require('telescope.builtin').find_files({hidden=true,cwd='/'})<cr>
nnoremap <silent> <leader>f. <cmd>lua require('telescope.builtin').find_files()<cr>
nnoremap <silent> <leader>fg <cmd>lua require('telescope.builtin').live_grep()<cr>
nnoremap <silent> <leader>fb <cmd>lua require('telescope.builtin').buffers()<cr>
nnoremap <silent> <leader>fh <cmd>lua require('telescope.builtin').help_tags()<cr>

" LINE NUMBERING
nnoremap <silent> <leader>rnu :set rnu!<CR>
nnoremap <silent> <leader>anu :set nu!<CR>

" TERMINAL
nnoremap <silent> <leader>sh :term<CR>
nnoremap <silent> <C-w>+ :vertical resize +5<CR>
nnoremap <silent> <C-w>- :vertical resize -5<CR>
tnoremap <Esc> <C-/><C-n>


" WRITING AND QUITTING
nnoremap <silent> <leader>q :wqall<CR>
nnoremap <silent> <leader>q! :wqall!<CR>
nnoremap <silent> <leader>qq :qall!<CR>
nnoremap src :w<bar>so %<CR>

" Nice to Haves

nnoremap <silent> <Leader>o o<Esc>0"_D
nnoremap <silent> <Leader>O O<Esc>0"_D
nnoremap <silent> <Leader>hd :r!figlet -S %<CR>
nnoremap <silent> <Leader>hp :r!figlet -S -f lean %
nnoremap <silent> <Leader>wr :set wrap!<CR>
nnoremap <silent> <Leader>ts o<Esc>:put =strftime(\"`%X`\")<CR>o<CR>
nnoremap <silent> <Leader>tt o- [ ] 
nnoremap <silent> <leader>td V:s/\[ \]/\[x\]/g<CR>
nnoremap <silent> <Leader>tu V:s/\[x\]/\[ \]/g<CR>
nnoremap 2o o<Esc>o
nnoremap <silent> <Leader>sc o\| Time \| Name \|<CR>\| :---: \| :---: \|<Esc>jVG:s/\([0-9]\{2\}\:[0-9]\{2\}\) \: \(.*\)/\| \1:00 \| \2 \|/g<CR>
nnoremap <silent> <leader>cs :colorscheme 
nnoremap <silent> <leader>tr :TransparentToggle<CR>
nnoremap <silent> <leader>bl :set background=light<CR>:TransparentDisable<CR>: set termguicolors<CR>
nnoremap <silent> <leader>bd :set background=dark<CR>set notermguicolors<CR>
nnoremap <silent> <leader>rbl :g/^$/d<CR>
nnoremap <silent> <leader>tw :%s/ *$//g<CR> 
" Insert Mode

inoremap <C-s> <Esc>:put =strftime(\"`%X`\")<CR>o<CR>
inoremap <C-a> - [ ] 
inoremap <C-d> <Esc>V:s/\[ \]/\[x\]/g<CR>i
inoremap <C-u> <Esc>V:s/\[x\]/\[ \]/g<CR>i
" Zen

nnoremap <silent> <leader>z :Goyo<CR>
" INDENTS

nnoremap <S-Tab> <<
nnoremap <Tab> >>
inoremap <S-Tab> <C-d>
" Markdown

noremap <silent> <leader>p :Glow<CR>
noremap <C-w>z <C-w>\|<C-w>\_
" Bash

nnoremap bs i#!/bin/bash<ESC>o
nnoremap sh :!chmod +x % && source %
