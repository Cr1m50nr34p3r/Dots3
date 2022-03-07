""""""""""_"""""""""""""""     
"""__   _(_)_ __ ___  """"
"""\ \ / / | '_ ` _ \ """"
""""\ V /| | | | | | |""""
"""""\_/ |_|_| |_| |_|""""
""""""""""""""""""""""""""

""""""""""""""""""
""" BASIC OPTIONS
""""""""""""""""""

syntax on
set background=dark
set foldmethod=expr
set foldexpr=nvim_treesitter#foldexpr()
set autoindent
set tabstop=4 
set shiftwidth=4 
set expandtab
set modifiable
set noerrorbells
set smartindent
set nowrap
set smartcase
set noswapfile
set nobackup
set completeopt-=preview
set undodir=~/.config/nvim/cache/undodir
set undofile
set incsearch
set encoding=utf-8
set clipboard=unnamed
set relativenumber
set nu
set nohlsearch
set signcolumn=yes
set completeopt=menu,menuone,noselect
"set termguicolors
set mouse=a
set spelllang=en_us
set autochdir
""""""""""""
""" PLUGINS 
""""""""""""
call plug#begin('~/.vim/plugged')
" basic

Plug 'jremmen/vim-ripgrep'
Plug 'tpope/vim-fugitive'
Plug 'vim-utils/vim-man'
Plug 'Lyuts/vim-rtags'
Plug 'chrisbra/Colorizer'
Plug 'ap/vim-css-color'
" Zen Mode 

Plug 'junegunn/goyo.vim'
Plug 'junegunn/limelight.vim'
" FZF

Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
" Undo tree

Plug 'mbbill/undotree'

" File Tree
Plug 'preservim/nerdtree'
Plug 'ryanoasis/vim-devicons'

" Commenter
Plug 'preservim/nerdcommenter'

" Therme
Plug 'arcticicestudio/nord-vim'
Plug 'morhetz/gruvbox'

" Status Bar
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'

" Zen Mode 
Plug 'junegunn/goyo.vim'
Plug 'junegunn/limelight.vim'

" Indents
Plug 'yggdroot/indentline'

" Code Completions
Plug 'valloric/youcompleteme'
Plug 'leafgarland/typescript-vim'
Plug 'ervandew/supertab'

" Bash
Plug 'kovetskiy/vim-bash'

" Lua
Plug 'wolfgangmehner/lua-support'

" Python
Plug 'vim-scripts/indentpython.vim'
Plug 'vim-syntastic/syntastic'
Plug 'nvie/vim-flake8'
Plug 'davidhalter/jedi-vim'

" Bracket Handling
Plug 'raimondi/delimitmate'

" Tab handling
Plug 'godlygeek/tabular'

" Markdown
Plug 'plasticboy/vim-markdown'
Plug 'instant-markdown/vim-instant-markdown', {'for': 'markdown', 'do': 'yarn install'}

" Snippets
Plug 'honza/vim-snippets'
Plug 'SirVer/ultisnips'

" PDF
Plug 'lynnard/pandoc-preview.vim'
Plug 'makerj/vim-pdf'

call plug#end()
"""""""""""""""""""""
""" SETTING UP UTILS 
"""""""""""""""""""""

" NORD THEME
"set termguicolors
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

" YOUCOMPLETEME
let g:ycm_autoclose_preview_window_after_completion=1
nnoremap <silent> <Leader>gd :YcmCompleter GoTo <CR>
nnoremap <silent> <Leader>gf :YcmCompleter FixIt<CR>
nnoremap <leader>g  :YcmCompleter GoToDefinitionElseDeclaration<CR>

" Snippets
let g:UltiSnipsExpandTrigger="<tab>"
let g:UltiSnipsJumpForwardTrigger="<c-b>"
let g:UltiSnipsJumpBackwardTrigger="<c-z>"
" If you want :UltiSnipsEdit to split your window.
let g:UltiSnipsEditSplit="vertical"

" INDENTS
let g:indentLine_char = '|'

" PDF PREVIEW
let g:pandoc_preview_pdf_cmd = "zathura"  

" Limelight
" Color name (:help cterm-colors) or ANSI code
let g:limelight_conceal_ctermfg = 'gray'
let g:limelight_conceal_ctermfg = 240

" Color name (:help gui-colors) or RGB color
let g:limelight_conceal_guifg = 'DarkGray'
let g:limelight_conceal_guifg = '#777777'

" Default: 0.5
let g:limelight_default_coefficient = 0.7

" Number of preceding/following paragraphs to include (default: 0)
let g:limelight_paragraph_span = 1

" Beginning/end of paragraph
"   When there's no empty line between the paragraphs
"   and each paragraph starts with indentation
let g:limelight_bop = '^\s'
let g:limelight_eop = '\ze\n^\s'

" Highlighting priority (default: 10)
"   Set it to -1 not to overrule hlsearch
let g:limelight_priority = -1
"""""""""""""""
""" BASIC VARS
"""""""""""""""
colorscheme gruvbox
let mapleader = " "
if executable('rg')
    let g:rg_derive_root='true'
endif
"""""""""""""""""""""
""" BASIC KEYBINDINGS
"""""""""""""""""""""

"PANES
nnoremap <leader>h :wincmd h<CR> 
nnoremap <leader>j :wincmd j<CR>
nnoremap <leader>k :wincmd k<CR>
nnoremap <leader>l :wincmd l<CR>
nnoremap <leader>p :wincmd p<CR>
nnoremap <leader>H :wincmd H<CR> 
nnoremap <leader>J :wincmd J<CR>
nnoremap <leader>K :wincmd K<CR>
nnoremap <leader>L :wincmd L<CR>
nnoremap <leader>R :wincmd R<CR>
nnoremap <silent> <Leader>+ :vertical resize +5<CR>
nnoremap <silent> <Leader>- :vertical resize -5<CR>
nnoremap <leader>wv :vnew<CR>
nnoremap <leader>wh :split<CR>
nnoremap <leader>wo :only<CR>
nnoremap <leader>wc :close<CR>
" NERDTREE

nnoremap <leader>t :NERDTree<CR>
nnoremap <leader>tc :NERDTreeClose<CR>
" Github

nnoremap <leader>gp :Git push<CR>
" UNDOTREE

nnoremap <leader>u :UndotreeShow<CR>
" Buffers

nnoremap <silent><C-t> :enew<CR>
nnoremap <silent><C-w> :bd<CR>
" SEARCHING

nnoremap <leader>ps :Rg<SPACE>
nnoremap <leader>f  :FZF ~<CR>

" LINE NUMBERING
nnoremap <leader>rnu :set rnu!<CR>
nnoremap <leader>anu :set nu!<CR>

" TERMINAL
nnoremap <leader>sh :vert term<CR>
nnoremap <silent> <C-w>+ :vertical resize +5<CR>
nnoremap <silent> <C-w>- :vertical resize -5<CR>

" WRITING AND QUITTING
nnoremap <leader>q :wqall<CR>
nnoremap <leader>q! :wqall!<CR>
nnoremap <leader>qq :qall!<CR>
nnoremap src :w<bar>so %<CR>

" Nice to Haves

nnoremap <Leader>o o<Esc>0"_D
nnoremap <Leader>O O<Esc>0"_D
nnoremap <Leader>hd :r!figlet -S %<CR>
nnoremap <Leader>hp :r!figlet -S -f lean %
nnoremap <Leader>wr :set wrap!<CR>
nnoremap <Leader>ts o<Esc>:put =strftime(\"`%X`\")<CR>o<CR>
nnoremap <Leader>tt o- [ ] 
nnoremap <leader>td V:s/\[ \]/\[x\]/g<CR>
nnoremap <Leader>tu V:s/\[x\]/\[ \]/g<CR>
nnoremap 2o o<Esc>o
nnoremap <Leader>sc o\| Time \| Name \|<CR>\| :---: \| :---: \|<Esc>jVG:s/\([0-9]\{2\}\:[0-9]\{2\}\) \: \(.*\)/\| \1 \| \2 \|/g<CR>
nnoremap <leader>cs :colorscheme 
" Insert Mode

inoremap <C-s> <Esc>:put =strftime(\"`%X`\")<CR>o<CR>
inoremap <C-a> - [ ] 
inoremap <C-d> <Esc>V:s/\[ \]/\[x\]/g<CR>i
inoremap <C-u> <Esc>V:s/\[x\]/\[ \]/g<CR>i
" Zen Mode

nnoremap <leader>z :Goyo<CR>
" Indents

nnoremap <S-Tab> <<
inoremap <S-Tab> <C-d>
" PDF
 nnoremap <leader>pv :PandocPreview<cr>
""""""""""""""
""" LANGUAGES
""""""""""""""
" PYTHON
let python_highlight_all=1
au BufRead,BufNewFile *.py,*.pyw,*.c,*.h match BadWhitespace /\s\+$/
" BASH
nnoremap bs i#!/bin/bash<ESC>o
nnoremap sh :!chmod +x % && source %
" MARKDOWN
set conceallevel=2
let g:vim_markdown_toc_autofit = 1
let g:vim_markdown_strikethrough = 1
let g:vim_markdown_new_list_item_indent = 2
let g:vim_markdown_no_extensions_in_markdown = 1
let g:vim_markdown_autowrite = 1
let g:vim_markdown_math = 1
let g:vim_markdown_frontmatter=1
let g:vim_markdown_toml_frontmatter=1
let g:vim_markdown_json_frontmatter=1

"""""""""""""
""" STARTUPS
"""""""""""""
autocmd WinNew :term  wincmd L
autocmd VimEnter * NERDTree | wincmd p
" Spell check
autocmd WinNew :term  wincmd L
" Text Editing
autocmd FileType txt setlocal spell nonu nornu wrap
autocmd FileType markdown.pandoc setlocal spell nonu nornu wrap
autocmd FileType org setlocal spell nonu nornu wrap
autocmd! User GoyoEnter Limelight
autocmd! User GoyoLeave Limelight!
