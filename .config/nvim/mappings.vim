
"""""""""""""""""""""
""" KEYBINDINGS
"""""""""""""""""""""
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

" BASH

nnoremap bs i#!/bin/bash<ESC>o
nnoremap sh :!chmod +x % && source %
