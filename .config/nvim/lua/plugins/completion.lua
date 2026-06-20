-- Completion: nvim-cmp and its sources.

local cmp_sources = {
  "onsails/lspkind-nvim",
  "hrsh7th/cmp-nvim-lsp",
  "hrsh7th/cmp-nvim-lua",
  "hrsh7th/cmp-path",
  "hrsh7th/cmp-nvim-lsp-signature-help",
  "hrsh7th/cmp-vsnip",
  "hrsh7th/cmp-buffer",
  "hrsh7th/cmp-omni",
}

-- Emoji completion source is only wired up on macOS (matches the previous config).
if vim.g.is_mac then
  table.insert(cmp_sources, "hrsh7th/cmp-emoji")
end

return {
  {
    "hrsh7th/nvim-cmp",
    event = "InsertEnter",
    dependencies = cmp_sources,
    config = function()
      require("config.nvim-cmp")
    end,
  },
}
