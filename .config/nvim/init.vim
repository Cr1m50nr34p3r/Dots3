
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
set modifiable
set noerrorbells
set tabstop=4
set shiftwidth=4
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
set completeopt=menu,menuone,noselect
set termguicolors
set mouse=a
set spelllang=en_us
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
" Zen Mode 
Plug 'folke/zen-mode.nvim'

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
Plug 'terrortylor/nvim-comment'
" Therme
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
call plug#end()
"""""""""""""""""""""
""" SETTING UP UTILS 
"""""""""""""""""""""
" NORD THEME
"set termguicolors
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
" Snippets
let g:UltiSnipsExpandTrigger="<tab>"
let g:UltiSnipsJumpForwardTrigger="<c-b>"
let g:UltiSnipsJumpBackwardTrigger="<c-z>"
" If you want :UltiSnipsEdit to split your window.
let g:UltiSnipsEditSplit="vertical"" INDENTS

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
        vim.fn["vsnip#anonymous"](args.body) -- For `vsnip` users.
        -- require('luasnip').lsp_expand(args.body) -- For `luasnip` users.
        -- require('snippy').expand_snippet(args.body) -- For `snippy` users.
        -- vim.fn["UltiSnips#Anon"](args.body) -- For `ultisnips` users.
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
      { name = 'vsnip' }, -- For vsnip users.
      -- { name = 'luasnip' }, -- For luasnip users.
      -- { name = 'ultisnips' }, -- For ultisnips users.
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
require'lspconfig'.pyright.setup{} -- Install language server: npm i -g pyright
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

" Zen Mode
lua require("zen-mode").setup {}
"""""""""""""""
" COmment 
lua require('nvim_comment').setup()
""" BASIC VARS
"""""""""""""""
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

" Nvim tree
nnoremap <leader>t :NvimTreeToggle<CR>
nnoremap <leader>r :NvimTreeRefresh<CR>
nnoremap <leader>n :NvimTreeFindFile<CR>

" github
nnoremap <leader>gs :G<CR>
nnoremap <leader>gc :Git commit<CR>
nnoremap <leader>gp :Git push<CR>

" buffers
nnoremap <silent><C-t> :enew<CR>
nnoremap <silent><C-w> :bd<CR>
nnoremap <silent><leader>tl :BufferLineCycleNext<CR>
nnoremap <silent><leader>th :BufferLineCyclePrev<CR>
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

" UNDOTREE
nnoremap <leader>u :UndotreeShow<CR>

" SEARCHING
nnoremap <leader>ps :Rg<SPACE>
nnoremap <leader>ff <cmd>lua require('telescope.builtin').find_files({hidden=true,cwd='~'})<cr>
nnoremap <leader>fr <cmd>lua require('telescope.builtin').find_files({hidden=true,cwd='/'})<cr>
nnoremap <leader>f. <cmd>lua require('telescope.builtin').find_files({hidden=true})<cr>
nnoremap <leader>fg <cmd>lua require('telescope.builtin').live_grep()<cr>
nnoremap <leader>fb <cmd>lua require('telescope.builtin').buffers()<cr>
nnoremap <leader>fh <cmd>lua require('telescope.builtin').help_tags()<cr>

" LINE NUMBERING
nnoremap <leader>rn :set rnu!<CR>
nnoremap <leader>an :set nu!<CR>

" TERMINAL
nnoremap <leader>sh :term<CR>
nnoremap <silent> <C-w>+ :vertical resize +5<CR>
nnoremap <silent> <C-w>- :vertical resize -5<CR>
tnoremap <Esc> <C-/><C-n>


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
 nnoremap <Leader>ts :put =strftime(\"@%X\")<CR>
" Zen
nnoremap <Leader>Z :ZenMode<CR>

" INDENTS
nnoremap <S-Tab> <<
nnoremap <Tab> >>
inoremap <S-Tab> <C-d>
" Markdown
noremap <leader>p :Glow<CR>
noremap <C-w>z <C-w>\|<C-w>\_
""""""""""""""
""" LANGUAGES
""""""""""""""
" PYTHON
let python_highlight_all=1
au BufRead,BufNewFile *.py,*.pyw,*.c,*.h match BadWhitespace /\s\+$/
" BASH
nnoremap bs i#!/bin/bash<ESC>o
nnoremap sh :!chmod +x % && source %
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
"""""""""""""
""" STARTUPS
"""""""""""""
autocmd WinNew :term  wincmd L
set autochdir
" auto-format
autocmd BufWritePre *.js lua vim.lsp.buf.formatting_sync(nil, 100)
autocmd BufWritePre *.jsx lua vim.lsp.buf.formatting_sync(nil, 100)
autocmd BufWritePre .py lua vim.lsp.buf.formatting_sync(nil, 100)
" spell check
autocmd BufWritePre *.txt md org set spell
