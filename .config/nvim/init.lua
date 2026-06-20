-- Entry point: bootstrap lazy.nvim, then load options, keymaps and plugins.
-- Plugin specs live in lua/plugins/*.lua; per-plugin setup in lua/config/*.lua.

-- Leader keys must be set before lazy.nvim loads.
vim.g.mapleader = ";"
vim.g.maplocalleader = ","

-- Bootstrap lazy.nvim.
local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not (vim.uv or vim.loop).fs_stat(lazypath) then
  vim.fn.system({
    "git",
    "clone",
    "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git",
    "--branch=stable",
    lazypath,
  })
end
vim.opt.rtp:prepend(lazypath)

require("config.options")
require("config.keymaps")

require("lazy").setup("plugins", {
  install = { colorscheme = { "rose-pine", "habamax" } },
  change_detection = { notify = false },
})
