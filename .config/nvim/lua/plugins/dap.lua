-- Debugging: nvim-dap core plus the UI and language adapters.
-- nvim-dap-ui owns the wiring: its dependencies (dap, nio, mason, rust-tools,
-- notify, telescope-dap) are all loaded before config.nvim-dap / config.nvim-dap-ui
-- run, which both reach across into those modules.

return {
  { "mfussenegger/nvim-dap", lazy = true },
  { "nvim-neotest/nvim-nio", lazy = true },
  { "nvim-telescope/telescope-dap.nvim", lazy = true },

  {
    "rcarriga/nvim-dap-ui",
    dependencies = {
      "mfussenegger/nvim-dap",
      "nvim-neotest/nvim-nio",
      "nvim-telescope/telescope-dap.nvim",
      "simrat39/rust-tools.nvim",
      "williamboman/mason.nvim",
      "rcarriga/nvim-notify",
    },
    config = function()
      require("config.nvim-dap")
      require("config.nvim-dap-ui")
    end,
  },

  {
    "leoluz/nvim-dap-go",
    dependencies = { "mfussenegger/nvim-dap" },
    config = function()
      require("dap-go").setup()
    end,
  },

  {
    "mfussenegger/nvim-dap-python",
    dependencies = { "mfussenegger/nvim-dap" },
    config = function()
      require("dap-python").setup("~/.virtualenvs/debugpy/bin/python")
    end,
  },
}
