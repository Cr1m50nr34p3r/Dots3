
""""""""""""
""" PLUGINS 
""""""""""""
call plug#begin('~/.config/nvim/plugged')
" basic
Plug 'jremmen/vim-ripgrep'
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-rhubarb'
Plug 'vim-utils/vim-man'
Plug 'Lyuts/vim-rtags'
Plug 'chrisbra/Colorizer'
Plug 'ap/vim-css-color'
Plug 'xiyaowong/nvim-transparent'
" Zen Mode 
Plug 'folke/zen-mode.nvim'
Plug 'junegunn/goyo.vim'
Plug 'junegunn/limelight.vim'


" Telescope
Plug 'nvim-lua/popup.nvim'
Plug 'nvim-lua/plenary.nvim'
Plug 'nvim-telescope/telescope.nvim'
Plug 'nvim-telescope/telescope-fzy-native.nvim'
" Undo tree
Plug 'mbbill/undotree'
" File Tree
Plug 'kyazdani42/nvim-web-devicons' " for file icons
Plug 'kyazdani42/nvim-tree.lua'
" File buffers
Plug 'kyazdani42/nvim-web-devicons' " Recommended (for coloured icons)
" Plug 'ryanoasis/vim-devicons' Icons without colours
Plug 'akinsho/bufferline.nvim'
" Commenter
Plug 'preservim/nerdcommenter'
" Therme
Plug 'morhetz/gruvbox'
Plug 'arcticicestudio/nord-vim'
" Status Bar
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
" Indents
Plug 'lukas-reineke/indent-blankline.nvim'
" Code Completions
Plug 'neovim/nvim-lspconfig'
Plug 'hrsh7th/cmp-nvim-lsp'
Plug 'hrsh7th/cmp-buffer'
Plug 'hrsh7th/cmp-path'
Plug 'hrsh7th/cmp-cmdline'
Plug 'hrsh7th/nvim-cmp'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'ervandew/supertab'
Plug 'williamboman/nvim-lsp-installer'
Plug 'github/copilot.vim'
" Bracket Handling

Plug 'windwp/nvim-autopairs'
" Rust

Plug 'cespare/vim-toml'
Plug 'simrat39/rust-tools.nvim'
" Markdown

Plug 'plasticboy/vim-markdown'
Plug 'godlygeek/tabular'
Plug 'elzr/vim-json'
Plug 'vim-pandoc/vim-pandoc-syntax'
Plug 'ellisonleao/glow.nvim'
" Snippets

Plug 'SirVer/ultisnips'
Plug 'quangnguyen30192/cmp-nvim-ultisnips'
" Syntax Highlighting

Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}
" Debugger

Plug 'puremourning/vimspector'
" Extra Functionality

Plug 'tmhedberg/matchit'

call plug#end()
