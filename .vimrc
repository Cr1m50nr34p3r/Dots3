syntax on
set background=dark
set noerrorbells
set tabstop=4
set shiftwidth=4
set expandtab
set smartindent
set nu
set nowrap
set smartcase
set noswapfile
set nobackup
set undodir=~/.config/.vim/undodir
set undofile
set incsearch
set encoding=utf-8
set clipboard=unnamed
"set colorcolumn=1000
"highlight ColorColumn ctermbg=0 guibg=lightgrey
call plug#begin('~/.vim/plugged')
"Plug 'morhetz/gruvbox'
Plug 'jremmen/vim-ripgrep'
Plug 'tpope/vim-fugitive'
Plug 'leafgarland/typescript-vim'
Plug 'vim-utils/vim-man'
Plug 'Lyuts/vim-rtags'
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'mbbill/undotree'
Plug 'preservim/nerdtree'
Plug 'valloric/youcompleteme'
Plug 'arcticicestudio/nord-vim'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'vim-scripts/indentpython.vim'
"Plug 'vim-syntastic/syntastic'
Plug 'nvie/vim-flake8'
call plug#end()
set termguicolors
colorscheme nord
"set background=dark
if executable('rg')
    let g:rg_derive_root='true'
endif
let g:nord_cursor_line_number_background = 1
let g:nord_uniform_status_lines = 1
let g:nord_bold_vertical_split_line = 1
let g:nord_uniform_diff_background = 1
let g:nord_bold = 0
let g:nord_italic_comments = 1
let g:nord_underline = 1
let g:ycm_autoclose_preview_window_after_completion=1
augroup nord-theme-overrides
  autocmd!
  " Use 'nord7' as foreground color for Vim comment titles.
  autocmd ColorScheme nord highlight vimCommentTitle ctermfg=14 guifg=#8FBCBB
augroup END
let mapleader = " "
let python_highlight_all=1
nnoremap <leader>h :wincmd h<CR>
nnoremap <leader>j :wincmd j<CR>
nnoremap <leader>k :wincmd k<CR>
nnoremap <leader>l :wincmd l<CR>
nnoremap <leader>t :NERDTree<CR>
nnoremap <leader>tc :NERDTreeClose<CR>
nnoremap <leader>wp :wincmd p<CR>
nnoremap <leader>u :UndotreeShow<CR>
nnoremap <leader>ps :Rg<SPACE>
nnoremap <silent> <Leader>+ :vertical resize +5<CR>
nnoremap <silent> <Leader>- :vertical resize -5<CR>
nnoremap <leader>f :FZF<CR>
nnoremap <silent> <Leader>gd :YcmCompleter GoTo <CR>
nnoremap <silent> <Leader>gf :YcmCompleter FixIt<CR>
nnoremap bs i#!/bin/bash/<ESC>o
nnoremap sh :!chmod +x % && source %
map <leader>g  :YcmCompleter GoToDefinitionElseDeclaration<CR>
au BufRead,BufNewFile *.py,*.pyw,*.c,*.h match BadWhitespace /\s\+$/

