
require('packer').startup(function(use)
  use 'Abstract-IDE/Abstract-cs'
  use {
		'nvim-telescope/telescope.nvim', tag = '0.1.1',
	-- or                            , branch = '0.1.x',
		requires = { {'nvim-lua/plenary.nvim'} }
	}
end)

local builtin = require('telescope.builtin')
vim.keymap.set('n', '<leader>ff', builtin.find_files, {})
vim.keymap.set('n', '<leader>fg', builtin.live_grep, {})
vim.keymap.set('n', '<leader>fb', builtin.buffers, {})
vim.keymap.set('n', '<leader>fh', builtin.help_tags, {})

vim.cmd[[colorscheme abscs]]
vim.cmd('set noexpandtab')
vim.cmd('set tabstop=2')
vim.cmd('set shiftwidth=2')
vim.cmd('set number')

vim.g.mapleader = ' '

vim.keymap.set('n', '<C-h>', '<C-w>h')
vim.keymap.set('n', '<C-j>', '<C-w>j')
vim.keymap.set('n', '<C-k>', '<C-w>k')
vim.keymap.set('n', '<C-l>', '<C-w>l')


vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1

vim.opt.termguicolors = true


-- empty setup using defaults
require("nvim-tree").setup({
	filesystem = {
		bind_to_cwd = false,
		follow_current_file = true,
		filtered_items = {
			visible = true,
			hide_dotfiles = false,
			hide_gitignored = false,
			hide_by_name = {
				".DS_Store",
				"thumbs.db"
			},
		},
	},
  renderer = {
    icons = {
      glyphs = {
        default = "F",
        symlink = "S",
        bookmark = "B",
        modified = "●",
        folder = {
          arrow_closed = "→",
          arrow_open = "↓",
          default = "♦",
          open = "∗",
          empty = "◊",
          empty_open = "◊∗",
          symlink = "»",
          symlink_open = "»*",
        },
        git = {
          unstaged = "✗",
          staged = "✓",
          unmerged = "⌉",
          renamed = "➜",
          untracked = "★",
          deleted = "⊗",
          ignored = "◌",
        },
      },
    },
  }
})

local function open_nvim_tree()
  -- open the tree
	require("nvim-tree.api").tree.open()
end

vim.api.nvim_create_autocmd({ "VimEnter" }, { callback = open_nvim_tree })


require('Comment').setup()
