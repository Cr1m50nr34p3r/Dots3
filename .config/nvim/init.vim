"""""""""""""""""""""""""""""""""""""""""
"""" _       _ _         _           """"
""""(_)_ __ (_) |___   _(_)_ __ ___  """"
""""| | '_ \| | __\ \ / / | '_ ` _ \ """"
""""| | | | | | |_ \ V /| | | | | | |""""
""""|_|_| |_|_|\__(_)_/ |_|_| |_| |_|""""
"""""""""""""""""""""""""""""""""""""""""
""""""""""""""
"""" BASICS
""""""""""""""
source $HOME/.config/nvim/plugin.vim
source $HOME/.config/nvim/options.vim
source $HOME/.config/nvim/autoload.vim
source $HOME/.config/nvim/var.vim
source $HOME/.config/nvim/mappings.vim
"""""""""""""""""""""
""" SETTING UP UTILS 
"""""""""""""""""""""
" NORD THEME
source $HOME/.config/nvim/Plugins/Nord/nord.vim

" Limelight
source $HOME/.config/nvim/Plugins/Limelight/limelight.vim
" Telescope
source $HOME/.config/nvim/Plugins/Telescope/telescope.vim
" Cmp
source $HOME/.config/nvim/Plugins/Cmp/cmp.vim

" Coc
" source $HOME/.config/nvim/Plugins/coc.vim/coc.vim

"  lsp
source $HOME/.config/nvim/Plugins/lsp-install/lsp-install.vim

" UltiSnips
source $HOME/.config/nvim/Plugins/Ulti-Snips/ulti-snip.vim

" VimSpector

source $HOME/.config/nvim/Plugins/VimSpector/vim-spector.vim

" BUFFERLINE 
source $HOME/.config/nvim/Plugins/Bufferline/bufferline.vim

" indent-blankline
source $HOME/.config/nvim/Plugins/indent-blankline/indent.vim

" Transpirancy
source $HOME/.config/nvim/Plugins/Transpirancy/transpirancy.vim

lua <<EOF
-- Brackets
require('nvim-autopairs').setup{}

-- nvim-treesitter
require("plugins/TreeSitter/treesitter")


-- Zen Mode
require("zen-mode").setup {}

-- Nvim-tree 
require("plugins/Nvim-Tree/nvim-tree")
EOF
