-- UI: colorscheme, statusline, tabline, dashboard, which-key, notifications.

return {
  -- Icons, used by several UI plugins below.
  { "nvim-tree/nvim-web-devicons", lazy = true },

  -- Notifications (required at runtime by the dap keymaps).
  { "rcarriga/nvim-notify" },

  {
    "nvim-lualine/lualine.nvim",
    event = "VimEnter",
    dependencies = { "nvim-tree/nvim-web-devicons" },
    config = function()
      require("config.statusline")
    end,
  },

  {
    "nvimdev/dashboard-nvim",
    event = "VimEnter",
    dependencies = { "nvim-tree/nvim-web-devicons" },
    config = function()
      require("config.dashboard-nvim")
    end,
  },

  {
    "romgrk/barbar.nvim",
    dependencies = { "nvim-tree/nvim-web-devicons" },
    config = function()
      require("config.barbar")
    end,
  },

  {
    "folke/which-key.nvim",
    -- Pinned to v2: this config uses the which-key v2 API (plugins/key_labels/
    -- window/layout), which was removed in v3.
    version = "^2.1.0",
    event = "VimEnter",
    config = function()
      vim.defer_fn(function()
        require("config.which-key")
      end, 2000)
    end,
  },

  {
    "rose-pine/neovim",
    name = "rose-pine",
    priority = 1000,
    lazy = false,
    config = function()
      require("rose-pine").setup({
        --- @usage 'auto'|'main'|'moon'|'dawn'
        variant = "auto",
        --- @usage 'main'|'moon'|'dawn'
        dark_variant = "moon",
        bold_vert_split = false,
        dim_nc_background = false,
        disable_background = false,
        disable_float_background = false,
        disable_italics = false,

        --- @usage string hex value or named color from rosepinetheme.com/palette
        groups = {
          background = "base",
          background_nc = "_experimental_nc",
          panel = "surface",
          panel_nc = "base",
          border = "highlight_med",
          comment = "muted",
          link = "iris",
          punctuation = "subtle",

          error = "love",
          hint = "iris",
          info = "foam",
          warn = "gold",

          headings = {
            h1 = "iris",
            h2 = "foam",
            h3 = "rose",
            h4 = "gold",
            h5 = "pine",
            h6 = "foam",
          },
        },

        -- Change specific vim highlight groups
        -- https://github.com/rose-pine/neovim/wiki/Recipes
        highlight_groups = {
          ColorColumn = { bg = "rose" },

          -- Blend colours against the "base" background
          CursorLine = { bg = "foam", blend = 10 },
          StatusLine = { fg = "love", bg = "love", blend = 10 },

          -- By default each group adds to the existing config.
          -- If you only want to set what is written in this config exactly,
          -- you can set the inherit option:
          Search = { bg = "gold", inherit = false },
        },
      })

      vim.cmd([[colorscheme rose-pine]])
      vim.cmd([[hi Search guibg=#44415a]])
    end,
  },
}
