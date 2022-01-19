""""""""""""""""""
""" BASIC OPTIONS
""""""""""""""""""
syntax on
set background=dark
set noerrorbells
set tabstop=4
set shiftwidth=4
set expandtab
set smartindent
set nowrap
set smartcase
set noswapfile
set nobackup
set undodir=~/.config/.vim/undodir
set undofile
set incsearch
set encoding=utf-8
set clipboard=unnamed
set relativenumber
set nu
set nohlsearch
set signcolumn=yes
""""""""""""
""" PLUGINS 
""""""""""""
call plug#begin('~/.vim/plugged')
Plug 'jremmen/vim-ripgrep'
"Plug 'JamshedVesuna/vim-markdown-preview' 
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
Plug 'vim-syntastic/syntastic'
Plug 'nvie/vim-flake8'
Plug 'raimondi/delimitmate'
Plug 'godlygeek/tabular'
Plug 'plasticboy/vim-markdown'
call plug#end()
""""""""""""""""""""""""""
""" SETTING UP NORD THEME
""""""""""""""""""""""""""
set termguicolors
colorscheme nord
let g:nord_cursor_line_number_background = 1
let g:nord_uniform_status_lines = 1
let g:nord_bold_vertical_split_line = 1
let g:nord_uniform_diff_background = 1
let g:nord_bold = 0
let g:nord_italic_comments = 1
let g:nord_underline = 1
augroup nord-theme-overrides
  autocmd!
  " Use 'nord7' as foreground color for Vim comment titles.
  autocmd ColorScheme nord highlight vimCommentTitle ctermfg=14 guifg=#8FBCBB
augroup END
""""""""""""""""""""""""""
""" SETTING U COMPLETE ME
""""""""""""""""""""""""""
let g:ycm_autoclose_preview_window_after_completion=1
nnoremap <silent> <Leader>gd :YcmCompleter GoTo <CR>
nnoremap <silent> <Leader>gf :YcmCompleter FixIt<CR>
nnoremap <leader>g  :YcmCompleter GoToDefinitionElseDeclaration<CR>
"""""""""""""""
""" BASIC VARS
"""""""""""""""
let mapleader = " "
if executable('rg')
    let g:rg_derive_root='true'
endif
"""""""""""""""""""""
""" BASIC KEYBINDINGS
"""""""""""""""""""""
" PANES
nnoremap <leader>h :wincmd h<CR>
nnoremap <leader>j :wincmd j<CR>
nnoremap <leader>k :wincmd k<CR>
nnoremap <leader>l :wincmd l<CR>
nnoremap <leader>p :wincmd p<CR>
nnoremap <silent> <Leader>+ :vertical resize +5<CR>
nnoremap <silent> <Leader>- :vertical resize -5<CR>
nnoremap <leader>wv :vnew<CR>
nnoremap <leader>wo :only<CR>
nnoremap <leader>wc :close<CR>
" NERDTREE
nnoremap <leader>t :NERDTree<CR>
nnoremap <leader>tc :NERDTreeClose<CR>
" UNDOTREE
nnoremap <leader>u :UndotreeShow<CR>
" SEARCHING
nnoremap <leader>ps :Rg<SPACE>
nnoremap <leader>f :FZF<CR>
" LINE NUMBERING
nnoremap <leader>rn :set rnu!<CR>
nnoremap <leader>an :set nu!<CR>
" TERMINAL
nnoremap <leader>sh :term<CR>
""""""""""""""
""" LANGUAGES
""""""""""""""
" PYTHON
let python_highlight_all=1
au BufRead,BufNewFile *.py,*.pyw,*.c,*.h match BadWhitespace /\s\+$/
" BASH
nnoremap bs i#!/bin/bash/<ESC>o
nnoremap sh :!chmod +x % && source %
" MARKDOWN
let g:vim_markdown_toc_autofit = 1
let g:vim_markdown_strikethrough = 1
let g:vim_markdown_new_list_item_indent = 2
let g:vim_markdown_no_extensions_in_markdown = 1
let g:vim_markdown_autowrite = 1
"""""""""""""
""" STARTUPS
"""""""""""""
autocmd WinNew * wincmd L
autocmd VimEnter * NERDTree | wincmd p
