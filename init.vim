" Install Plugin
call plug#begin('~/AppData/Local/nvim/plugged')
" Treesitter
Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}
Plug 'HiPhish/rainbow-delimiters.nvim'

" Tree
Plug 'nvim-tree/nvim-web-devicons' " optional, for file icons
Plug 'nvim-tree/nvim-tree.lua'

" LSP
Plug 'neovim/nvim-lspconfig'
Plug 'hrsh7th/cmp-nvim-lsp'
Plug 'hrsh7th/cmp-buffer'
Plug 'hrsh7th/cmp-path'
Plug 'hrsh7th/cmp-cmdline'
Plug 'hrsh7th/nvim-cmp'
Plug 'folke/lsp-trouble.nvim'

" For vsnip users.
Plug 'hrsh7th/cmp-vsnip'
Plug 'hrsh7th/vim-vsnip'

" Autoformat
Plug 'mattn/efm-langserver'
Plug 'stevearc/conform.nvim'
" Need to check autoformat with black python - neovim lib is old
" Plug 'vim-autoformat/vim-autoformat'

" Telescope
Plug 'nvim-lua/plenary.nvim'
Plug 'nvim-telescope/telescope.nvim'

" Comment code
Plug 'terrortylor/nvim-comment'

" Theme
" Plug 'folke/tokyonight.nvim', { 'branch': 'main' }
Plug 'tribela/transparent.nvim'

" TagBar
Plug 'preservim/tagbar'

" Surround
Plug 'tpope/vim-surround'
Plug 'tpope/vim-repeat'

" Multicursor
Plug 'mg979/vim-visual-multi', {'branch': 'master'}

" TODO comment
Plug 'folke/todo-comments.nvim'
Plug 'nvim-lua/plenary.nvim'

" Git blame
Plug 'f-person/git-blame.nvim'

" Copilot
Plug 'github/copilot.vim'

" Image preview
Plug 'adelarsq/image_preview.nvim'

" List buffers
Plug 'kilavila/nvim-bufferlist'

" Autotag
Plug 'windwp/nvim-ts-autotag'

call plug#end()

" Setting Plugin
" Treesitter
lua require('plugin.treesitter.settings')

" Tree
lua require('plugin.nvim-tree.settings')

" LSP
lua require('plugin.lsp.settings')

" Comment code
lua require('plugin.comment-code.settings')

" Rainbow delimiters
lua require('plugin.rainbow-delimiters.settings')

" LSP Trouble
lua require('plugin.lsp-trouble.settings')

" Image preview
lua require('plugin.image-preview.settings') 

" Formatter settings
lua require('plugin.conform.settings')

" Copilot settings
lua require('plugin.copilot.settings')

" Autotag settings
lua require('plugin.autotag.settings')

" Load settings final to override all unused settings from plugin
exe 'source' '~/AppData/Local/nvim/settings.vim'