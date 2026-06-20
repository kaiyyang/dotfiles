-- Editor: file tree, fuzzy finder, motions, navigation, misc helpers.

return {
  { "nvim-lua/plenary.nvim", lazy = true },

  {
    "nvim-tree/nvim-tree.lua",
    dependencies = { "nvim-tree/nvim-web-devicons" },
    config = function()
      require("config.nvim-tree")
    end,
  },

  {
    "nvim-telescope/telescope.nvim",
    tag = "0.1.2",
    dependencies = { "nvim-lua/plenary.nvim" },
    config = function()
      require("config.telescope")
    end,
  },

  {
    -- phaazon/hop.nvim is archived/unavailable; smoka7 is the maintained fork
    -- with the same setup API.
    "smoka7/hop.nvim",
    config = function()
      -- see :h hop-config
      require("hop").setup({ keys = "etovxqpdygfblzhckisuran" })
    end,
  },

  {
    "jdhao/better-escape.vim",
    event = "InsertEnter",
    init = function()
      vim.g.better_escape_shortcut = "jj"
      vim.g.better_escape_interval = 200
    end,
  },

  -- Asynchronous command execution.
  { "skywind3000/asyncrun.vim", cmd = { "AsyncRun" } },

  {
    "alexghergh/nvim-tmux-navigation",
    config = function()
      require("config.nvim-tmux-navigation")
    end,
  },

  -- File/tag search. On Windows the C extension build was skipped (no behaviour
  -- change: vim.g.is_win is never set, so the build always runs here).
  { "Yggdroot/LeaderF", cmd = "Leaderf", build = ":LeaderfInstallCExtension" },

  -- Cmdline completion (loaded but not configured, matching the previous setup).
  { "gelguy/wilder.nvim", event = "CmdlineEnter" },

  -- Markdown preview (terminal).
  {
    "ellisonleao/glow.nvim",
    config = function()
      require("config.glow")
    end,
  },
}
