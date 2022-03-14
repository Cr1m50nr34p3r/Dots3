
"""""""""""""""""""""""""""""""""""""""""
"""" _       _ _         _           """"
""""(_)_ __ (_) |___   _(_)_ __ ___  """"
""""| | '_ \| | __\ \ / / | '_ ` _ \ """"
""""| | | | | | |_ \ V /| | | | | | |""""
""""|_|_| |_|_|\__(_)_/ |_|_| |_| |_|""""
"""""""""""""""""""""""""""""""""""""""""
""""""""""""""""""
""" Basic
""""""""""""""""""
source $HOME/.config/nvim/plugin.vim
source $HOME/.config/nvim/options/general.vim
source $HOME/.config/nvim/options/var.vim
source $HOME/.config/nvim/mappings.vim
"""""""""""""""""""""
""" SETTING UP UTILS 
"""""""""""""""""""""
" NORD THEME
source $HOME/.config/nvim/Plug-Conf/nord/nord.vim

" Ulti-Snips
source $HOME/.config/nvim/Plug-Conf/Ulti-Snips/ulti-snip.vim

" VimSpector 
" Install debugpy by VimSpectorInstall debugpy
source $HOME/.config/nvim/Plug-Conf/VimSpector/vim-spector.vim

" Limelight
source $HOME/.config/nvim/Plug-Conf/LimeLight/limelight.vim

" BUFFERLINE 
source $HOME/.config/nvim/Plug-Conf/BufferLine/bufferline.vim

" indent-blankline
source $HOME/.config/nvim/Plug-Conf/Indent-Blankline/indent-blankline.vim

" Telescope
source $HOME/.config/nvim/Plug-Conf/Telescope/telescope.vim

" Transpirancy
source $HOME/.config/nvim/Plug-Conf/Transparency/transparency.vim
lua <<EOF
-- nvim-tree
require("plugins/Nvim-Tree/nvim-tree")

-- Brackets
require('nvim-autopairs').setup{}

-- nvim-treesitter
require("plugins/TreeSitter/treesitter")

-- Zen Mode
require("zen-mode").setup {}
EOF
""""""""""""""
""" LANGUAGES
""""""""""""""
" Python 
" pip install black flake8
" Rust
" Install Rust-analyzer
