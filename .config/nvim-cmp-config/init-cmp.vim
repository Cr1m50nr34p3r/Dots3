"""""""""""""""""""""""""""""""""""""""""
"""" _       _ _         _           """"
""""(_)_ __ (_) |___   _(_)_ __ ___  """"
""""| | '_ \| | __\ \ / / | '_ ` _ \ """"
""""| | | | | | |_ \ V /| | | | | | |""""
""""|_|_| |_|_|\__(_)_/ |_|_| |_| |_|""""
"""""""""""""""""""""""""""""""""""""""""
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
set path+=**
highlight ColorColumn ctermbg=9
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
Plug 'ervandew/supertab'
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
" Python 

" Extra Functionality

Plug 'tmhedberg/matchit'
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
" Snippets

let g:UltiSnipsExpandTrigger="<tab>"
let g:UltiSnipsJumpForwardTrigger="<c-b>"
let g:UltiSnipsJumpBackwardTrigger="<c-z>"
" If you want :UltiSnipsEdit to split your window.
let g:UltiSnipsEditSplit="vertical"" INDENTS
" VimSpector 

let g:vimspector_enable_mappings = 'HUMAN'
" Install debugpy by VimSpectorInstall debugpy
 " nvim-tree

let g:nvim_tree_add_trailing = 0 
let g:nvim_tree_git_hl = 0
let g:nvim_tree_highlight_opened_files = 0
let g:nvim_tree_indent_markers = 1
let g:nvim_tree_quit_on_open = 0 
let g:nvim_tree_respect_buf_cwd = 1
let g:nvim_tree_root_folder_modifier = "?:gs?^??"
let g:nvim_tree_show_icons = {
    \ 'git': 1,
    \ 'folders': 1,
    \ 'files': 1,
    \ 'folder_arrows': 0,
    \ }
let g:nvim_tree_icons = {
    \ 'default': '',
    \ 'symlink': '',
    \ 'git': {
    \   'unstaged': "✗",
    \   'staged': "✓",
    \   'unmerged': "",
    \   'renamed': "➜",
    \   'untracked': "★",
    \   'deleted': "",
    \   'ignored': "◌"
    \   },
	\ 'folder': {
    \   'arrow_open': "",
    \   'arrow_closed': "",
    \   'default': "",
    \   'open': "",
    \   'empty': "",
    \   'empty_open': "",
    \   'symlink': "",
    \   'symlink_open': "",
    \   }
    \ }
lua require'nvim-tree'.setup {}
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
" Telescope
lua <<EOF
require('telescope').setup{
	defaults = {
		vimgrep_arguments = {
         	"rg",
         	"--color=never",
         	"--no-heading",
         	"--with-filename",
         	"--line-number",
        	"--column",
         	"--smart-case",
      	},
		prompt_prefix = "   ",
		selection_caret = "  ",
		entry_prefix = "  ",
		initial_mode = "insert",
		selection_strategy = "reset",
		sorting_strategy = "ascending",
		layout_strategy = "horizontal",
		layout_config = {
			horizontal = {
            	prompt_position = "top",
            	preview_width = 0.55,
            	results_width = 0.8,
         	},
         	vertical = {
            	mirror = false,
         	},
         	width = 0.87,
         	height = 0.80,
         	preview_cutoff = 120,
      	},
    	file_sorter = require("telescope.sorters").get_fuzzy_file,
		file_ignore_patterns = { "node_modules" },
		generic_sorter = require("telescope.sorters").get_generic_fuzzy_sorter,
		path_display = { "truncate" },
		winblend = 0,
		border = {},
		borderchars = { "─", "│", "─", "│", "╭", "╮", "╯", "╰" },
		color_devicons = true,
		use_less = true,
		set_env = { ["COLORTERM"] = "truecolor" }, -- default = nil,
		file_previewer = require("telescope.previewers").vim_buffer_cat.new,
		grep_previewer = require("telescope.previewers").vim_buffer_vimgrep.new,
		qflist_previewer = require("telescope.previewers").vim_buffer_qflist.new,
      -- Developer configurations: Not meant for general override
		buffer_previewer_maker = require("telescope.previewers").buffer_previewer_maker,
   },
	mappings = {
		i = {
        -- map actions.which_key to <C-h> (default: <C-/>)
        -- actions.which_key shows the mappings for your picker,
        -- e.g. git_{create, delete, ...}_branch for the git_branches picker
			["<C-h>"] = "which_key"
			}
		},
	pickers = {
    -- Default configuration for builtin pickers goes here:
    -- picker_name = {
    --   picker_config_key = value,
    --   ...
    -- }
    -- Now the picker_config_key will be applied every time you call this
    -- builtin picker
  },
	extensions = {
    -- Your extension configuration goes here:
    -- extension_name = {
    --   extension_config_key = value,
    -- }
    -- please take a look at the readme of the extension you want to configure
		fzy_native = {
			override_generic_sorter = false,
			override_file_sorter	= true
		},
	}
}

require('telescope').load_extension('fzy_native')
EOF
" COmp
lua <<EOF
  -- Setup nvim-cmp.
local cmp = require'cmp'

cmp.setup({
	snippet = {
      -- REQUIRED - you must specify a snippet engine
		expand = function(args)
		--	vim.fn["vsnip#anonymous"](args.body) -- For `vsnip` users.
        -- require('luasnip').lsp_expand(args.body) -- For `luasnip` users.
        -- require('snippy').expand_snippet(args.body) -- For `snippy` users.
        	vim.fn["UltiSnips#Anon"](args.body) -- For `ultisnips` users.
      end,
    },
    mapping = {
		['<C-b>'] = cmp.mapping(cmp.mapping.scroll_docs(-4), { 'i', 'c' }),
		['<C-f>'] = cmp.mapping(cmp.mapping.scroll_docs(4), { 'i', 'c' }),
		['<C-Space>'] = cmp.mapping(cmp.mapping.complete(), { 'i', 'c' }),
		['<C-y>'] = cmp.config.disable, -- Specify `cmp.config.disable` if you want to remove the default `<C-y>` mapping.
		['<C-e>'] = cmp.mapping({
			i = cmp.mapping.abort(),
			c = cmp.mapping.close(),
		}),
		['<CR>'] = cmp.mapping.confirm({ select = true }), -- Accept currently selected item. Set `select` to `false` to only confirm explicitly selected items.
    },
    sources = cmp.config.sources({
		{ name = 'nvim_lsp' },
	--	{ name = 'vsnip' }, -- For vsnip users.
      -- { name = 'luasnip' }, -- For luasnip users.
		{ name = 'ultisnips' }, -- For ultisnips users.
      -- { name = 'snippy' }, -- For snippy users.
    }, {
		{ name = 'buffer' },
    })
  })

  -- Set configuration for specific filetype.
cmp.setup.filetype('gitcommit', {
	sources = cmp.config.sources({
		{ name = 'cmp_git' }, -- You can specify the `cmp_git` source if you were installed it. 
    }, {
		{ name = 'buffer' },
    })
})

  -- Use buffer source for `/` (if you enabled `native_menu`, this won't work anymore).
cmp.setup.cmdline('/', {
	sources = {
		{ name = 'buffer' }
	}
})

  -- Use cmdline & path source for ':' (if you enabled `native_menu`, this won't work anymore).
cmp.setup.cmdline(':', {
	sources = cmp.config.sources({
		{ name = 'path' }
    }, {
		{ name = 'cmdline' }
    })
})
  -- Setup lspconfig.
local capabilities = require('cmp_nvim_lsp').update_capabilities(vim.lsp.protocol.make_client_capabilities())
  -- Replace <YOUR_LSP_SERVER> with each lsp server you've enabled.
require('lspconfig')['<YOUR_LSP_SERVER>'].setup {
	capabilities = capabilities
}
local cmp_autopairs = require('nvim-autopairs.completion.cmp')
cmp.event:on( 'confirm_done', cmp_autopairs.on_confirm_done({  map_char = { tex = '' } }))
-- add a lisp filetype (wrap my-function), FYI: Hardcoded = { "clojure", "clojurescript", "fennel", "janet" }
cmp_autopairs.lisp[#cmp_autopairs.lisp+1] = "racket"
EOF

"  lsp
lua <<EOF
require("lspconfig").pylsp.setup{} -- Install pip install 'python-lsp-server[all]'
--require'lspconfig'.pyright.setup{} -- Install language server: npm i -g pyright
require'lspconfig'.bashls.setup{} --Install language server: npm i -g bash-language-server
require'lspconfig'.vimls.setup{} --Install Language server npm install -g vim-language-server
require'lspconfig'.sumneko_lua.setup{} --Install server from https://github.com/sumneko/lua-language-server/releases
require'lspconfig'.zeta_note.setup{} -- Install binary from https://github.com/artempyanykh/zeta-note/releases
EOF
" Brackets
lua require('nvim-autopairs').setup{}
" BUFFERLINE 
lua <<EOF
require('bufferline').setup {
	options = {
		offsets = { { filetype = "NvimTree", text = "", padding = 1 } },
		buffer_close_icon = "",
		modified_icon = "",
		close_icon = "",
		show_close_icon = true,
		left_trunc_marker = "",
		right_trunc_marker = "",
		max_name_length = 14,
		max_prefix_length = 13,
		tab_size = 20,
		show_tab_indicators = true,
		enforce_regular_tabs = false,
		view = "multiwindow",
		show_buffer_close_icons = true,
		separator_style = "thin",
		always_show_bufferline = true,
		diagnostics = false,
		custom_filter = function(buf_number)
         -- Func to filter out our managed/persistent split terms
			local present_type, type = pcall(function()
            	return vim.api.nvim_buf_get_var(buf_number, "term_type")
         end)

			if present_type then
				if type == "vert" then
				   return false
				elseif type == "hori" then
				   return false
				end
				return true
			end

			return true
		end,
	},

}

EOF
" indent-blankline
lua <<EOF
require("indent_blankline").setup {
    -- for example, context is off by default, use this to turn it on
	show_current_context = true,
	show_current_context_start = true,
}
EOF

" nvim-treesitter
lua <<EOF
require'nvim-treesitter.configs'.setup {
  -- One of "all", "maintained" (parsers with maintainers), or a list of languages
	ensure_installed = "maintained",

	-- Install languages synchronously (only applied to `ensure_installed`)
	sync_install = false,

	-- List of parsers to ignore installing
	ignore_install = { "javascript" },

	highlight = {
	-- `false` will disable the whole extension
	enable = true,

	-- list of language that will be disabled

	-- Setting this to true will run `:h syntax` and tree-sitter at the same time.
	-- Set this to `true` if you depend on 'syntax' being enabled (like for indentation).
	-- Using this option may slow down your editor, and you may see some duplicate highlights.
	-- Instead of true it can also be a list of languages
	additional_vim_regex_highlighting = true,
  },
}
EOF
" Transpirancy

lua <<EOF
require("transparent").setup({
  enable = true, -- boolean: enable transparent
  extra_groups = { -- table/string: additional groups that should be clear
    -- In particular, when you set it to 'all', that means all avaliable groups

    -- example of akinsho/nvim-bufferline.lua
    "BufferLineTabClose",
    "BufferlineBufferSelected",
    "BufferLineFill",
    "BufferLineBackground",
    "BufferLineSeparator",
    "BufferLineIndicatorSelected",
  },
  exclude = {}, -- table: groups you don't want to clear
})
EOF
" Zen Mode
lua require("zen-mode").setup {}
"""""""""""""""
""" BASIC VARS
"""""""""""""""

let mapleader = " "
if executable('rg')
    let g:rg_derive_root='true'
endif
colorscheme gruvbox
"""""""""""""""""""""
""" BASIC KEYBINDINGS
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

" Completion
nnoremap <silent> gd <cmd>lua vim.lsp.buf.definition()<CR>
nnoremap <silent> gD <cmd>lua vim.lsp.buf.declaration()<CR>
nnoremap <silent> gr <cmd>lua vim.lsp.buf.references()<CR>
nnoremap <silent> gi <cmd>lua vim.lsp.buf.implementation()<CR>
nnoremap <silent> K <cmd>lua vim.lsp.buf.hover()<CR>
nnoremap <silent> <C-k> <cmd>lua vim.lsp.buf.signature_help()<CR>
nnoremap <silent> <C-N> <cmd>lua vim.lsp.diagnostic.goto_prev()<CR>
nnoremap <silent> <C-P> <cmd>lua vim.lsp.diagnostic.goto_next()<CR>

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
""""""""""""""
""" LANGUAGES
""""""""""""""
" Python 
""""pip3 -U setuptools pip
"""""pip3 install 'python-lsp-server[all]'

" BASH

nnoremap bs i#!/bin/bash<ESC>o
nnoremap sh :!chmod +x % && source %
" Markdown
" disable header folding
let g:vim_markdown_folding_disabled = 1
" do not use conceal feature, the implementation is not so good
let g:vim_markdown_conceal = 0
" disable math tex conceal feature
let g:tex_conceal = ""
let g:vim_markdown_math = 1
" support front matter of various format
let g:vim_markdown_frontmatter = 1  " for YAML format
let g:vim_markdown_toml_frontmatter = 1  " for TOML format
let g:vim_markdown_json_frontmatter = 1  " for JSON format
augroup pandoc_syntax
    au! BufNewFile,BufFilePre,BufRead *.md set filetype=markdown.pandoc
augroup END
let g:glow_border = "rounded"
let g:glow_use_pager = v:true

" Rust
" Install rust_analyzer using rustup +nightly component add rust-analyzer-preview (not path as of now) 
" Install rust_analyzer using sudo pacman -S rust-analyzer

" Set completeopt to have a better completion experience
" :help completeopt
" menuone: popup even when there's only one match
" noinsert: Do not insert text until a selection is made
" noselect: Do not select, force user to select one from the menu
"set completeopt=menuone,noinsert,noselect
"
"" Avoid showing extra messages when using completion
"set shortmess+=c
"
"" Configure LSP through rust-tools.nvim plugin.
"" rust-tools will configure and enable certain LSP features for us.
"" See https://github.com/simrat39/rust-tools.nvim#configuration
lua <<EOF
local nvim_lsp = require'lspconfig'

local opts = {
    tools = { -- rust-tools options
        autoSetHints = true,
        hover_with_actions = true,
        inlay_hints = {
            show_parameter_hints = false,
            parameter_hints_prefix = "",
            other_hints_prefix = "",
        },
    },

    -- all the opts to send to nvim-lspconfig
    -- these override the defaults set by rust-tools.nvim
    -- see https://github.com/neovim/nvim-lspconfig/blob/master/doc/server_configurations.md#rust_analyzer
    server = {
        -- on_attach is a callback called when the language server attachs to the buffer
        -- on_attach = on_attach,
        settings = {
            -- to enable rust-analyzer settings visit:
            -- https://github.com/rust-analyzer/rust-analyzer/blob/master/docs/user/generated_config.adoc
            ["rust-analyzer"] = {
                -- enable clippy on save
                checkOnSave = {
                    command = "clippy"
                },
            }
        }
    },
}

require('rust-tools').setup(opts)
EOF

" Setup Completion
" See https://github.com/hrsh7th/nvim-cmp#basic-configuration

"""""""""""""
""" STARTUPS
"""""""""""""
autocmd WinNew :term  wincmd L
set autochdir
autocmd FileType python setlocal omnifunc=v:lua.vim.lsp.omnifunc
autocmd FileType python nnoremap <buffer> <F5> :w<cr>:exec '!clear'<cr>:exec '!python3' shellescape(expand('%:p'), 1)<cr>
autocmd Filetype python :%s/\s*$//g

" Text Editing
autocmd FileType txt setlocal spell nonu nornu wrap
autocmd FileType markdown.pandoc setlocal spell nonu nornu wrap
autocmd FileType org setlocal spell nonu nornu wrap
autocmd! User GoyoEnter Limelight
autocmd! User GoyoLeave Limelight!
