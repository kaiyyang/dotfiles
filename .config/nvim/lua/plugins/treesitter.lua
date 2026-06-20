-- Treesitter: syntax-aware highlighting and parsers.

return {
  {
    "nvim-treesitter/nvim-treesitter",
    event = "BufEnter",
    build = ":TSUpdate",
    config = function()
      require("config.treesitter")
    end,
  },
}
