-- Global, plugin-independent keymaps. Plugin keymaps live with their plugin.

local map = vim.keymap.set
local silent = { silent = true, noremap = true }

-- Version control (Neogit, if installed)
map("n", "gs", "<cmd>Neogit<cr>", silent)

-- Yank to system clipboard
map({ "n", "v" }, "+y", '"+y', silent)

-- Window movement (note: overridden by nvim-tmux-navigation when loaded)
map("n", "<c-h>", "<c-w>h", silent)
map("n", "<c-j>", "<c-w>j", silent)
map("n", "<c-k>", "<c-w>k", silent)
map("n", "<c-l>", "<c-w>l", silent)
