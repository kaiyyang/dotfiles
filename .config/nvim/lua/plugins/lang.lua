-- Language-specific tooling: LaTeX, Markdown, Rust.

return {
  {
    "lervag/vimtex",
    ft = { "tex" },
    init = function()
      -- Moved here from the old core/plugins.vim.
      vim.g.tex_flavor = "latex" -- default tex file format
      vim.g.vimtex_view_method = "skim" -- program used to view the PDF
      vim.g.vimtex_view_skim_sync = 1 -- forward search after every successful compile
      vim.g.vimtex_view_skim_activate = 1 -- focus Skim after :VimtexView
    end,
  },

  -- Markdown preview (browser). Run :call mkdp#util#install() once if the
  -- preview server is missing (this plugin needs a one-time build step).
  { "iamcco/markdown-preview.nvim", ft = { "markdown" } },

  {
    "simrat39/rust-tools.nvim",
    config = function()
      require("config.rust-tools")
    end,
  },
}
