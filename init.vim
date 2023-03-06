call plug#begin()
Plug 'wbthomason/packer.nvim'
Plug 'rktjmp/lush.nvim'
Plug 'kartikp10/noctis.nvim'
Plug 'nvim-treesitter/nvim-treesitter'
Plug 'nvim-tree/nvim-tree.lua'
Plug 'rust-lang/rust.vim'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'neoclide/coc-highlight'
call plug#end()
lua require('plugins')

