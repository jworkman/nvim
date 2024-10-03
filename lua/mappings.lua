require "nvchad.mappings"

-- add yours here

local map = vim.keymap.set

map("n", ";", ":", { desc = "CMD enter command mode" })
map("i", "jk", "<ESC>")
map("<leader>chat", "<cmd>ChatGPT<CR>", "<ESC>", { desc = "Establish new ChatGPT session" })

-- map({ "n", "i", "v" }, "<C-s>", "<cmd> w <cr>")
