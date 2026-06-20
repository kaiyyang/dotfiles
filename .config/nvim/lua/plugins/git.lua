-- Git: fugitive and friends, gitlinker, gitsigns, committia.
-- NOTE: fugitive/gitlinker load on the custom "User InGitRepo" event, matching
-- the previous config. Nothing fires that event yet, so these stay dormant until
-- you add an autocmd that does `:doautocmd User InGitRepo` inside a git repo.

return {
  {
    "tpope/vim-fugitive",
    event = "User InGitRepo",
    config = function()
      require("config.fugitive")
    end,
  },
  {
    "rbong/vim-flog",
    dependencies = { "tpope/vim-fugitive" },
    cmd = { "Flog", "Flogsplit" },
  },
  {
    "christoomey/vim-conflicted",
    dependencies = { "tpope/vim-fugitive" },
    cmd = { "Conflicted" },
  },
  {
    "ruifm/gitlinker.nvim",
    dependencies = { "nvim-lua/plenary.nvim" },
    event = "User InGitRepo",
    config = function()
      require("config.git-linker")
    end,
  },
  {
    "lewis6991/gitsigns.nvim",
    config = function()
      require("config.gitsigns")
    end,
  },
  {
    "rhysd/committia.vim",
    ft = { "gitcommit", "gitrebase" },
  },
}
