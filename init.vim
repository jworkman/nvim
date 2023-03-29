call plug#begin()
Plug 'wbthomason/packer.nvim'
Plug 'nvim-lua/plenary.nvim'
Plug 'nvim-telescope/telescope.nvim', { 'tag': '0.1.1' }
Plug 'rktjmp/lush.nvim'
Plug 'kartikp10/noctis.nvim'
Plug 'nvim-treesitter/nvim-treesitter'
Plug 'nvim-tree/nvim-tree.lua'
Plug 'rust-lang/rust.vim'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'neoclide/coc-highlight'
Plug 'lumiliet/vim-twig'
Plug 'posva/vim-vue'

call plug#end()
lua require('plugins')
lua require('autocomplete')

