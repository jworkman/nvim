return {
  {
    "williamboman/mason.nvim",
    lazy = false,  -- explicitly disable lazy loading for this plugin
  },
  {
    "stevearc/conform.nvim",
    lazy = false,
    -- event = 'BufWritePre', -- uncomment for format on save
    opts = require "configs.conform",
  },

  {
    "jackMort/ChatGPT.nvim",
    event = "VimEnter",
    dependencies = {
      "MunifTanjim/nui.nvim",
      "nvim-lua/plenary.nvim",
      "folke/trouble.nvim",
      "nvim-telescope/telescope.nvim",
    },
    config = function()
      -- Function to execute the shell command and capture its output
      local function get_api_key()
        local handle = io.popen("pass show chatgpt/api/secret | head -n 1 | tr -d '\n'")
        local api_key = handle:read("*a")
        handle:close()
        return api_key:gsub("%s+", "") -- trim any extra whitespace
      end

      -- Get the API key
      local api_key = get_api_key()

      -- Setup ChatGPT with the API key
      require("chatgpt").setup({
        api_key_cmd = "echo " .. api_key,
      })
    end,
  },

  -- {
  --   "jackMort/ChatGPT.nvim",
  --   event = "VeryLazy",
  --   lazy = false,
  --   config = function()
  --     require("configs.chatgpt").setup()
  --   end,
  --   dependencies = {
  --     "MunifTanjim/nui.nvim",
  --     "nvim-lua/plenary.nvim",
  --     "folke/trouble.nvim",
  --     "nvim-telescope/telescope.nvim"
  --   }
  -- },

  -- These are some examples, uncomment them if you want to see them work!
  {
    "neovim/nvim-lspconfig",
    lazy = false,
    config = function()
      require "configs.lspconfig"
    end,
  },

  {
    "lewis6991/gitsigns.nvim",
    lazy = false,
    event = {"BufReadPre", "BufNewFile"}, -- Load on file read
    dependencies = { "nvim-lua/plenary.nvim" },
    config = function()
      require('gitsigns').setup()
    end
  },

  {
  	"nvim-treesitter/nvim-treesitter",
    lazy = false,
  	opts = {
  		ensure_installed = {
        "vim", "lua", "vimdoc", "toml", "yaml", "json", "bash",
        "html", "css", "scss", "php", "vue", "typescript", "javascript",
        "c", "c_sharp", "cmake", "make", "markdown", "nginx", "liquid", "twig",
        "rust", "ada", "sql", "ruby", "python", "pug", "xml", "graphql",
        "dockerfile", "dot", "cpp", "angular", "git_config", "gitignore",
        "htmldjango", "http", "java", "passwd", "regex", "zig"
  		},
  	},
  },
}
