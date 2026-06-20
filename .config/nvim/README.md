# nvim_config

My own Neovim config, managed with [lazy.nvim](https://github.com/folke/lazy.nvim).

## Prerequisites

- Neovim >= 0.9
- `git`, a C compiler, and (optionally) `node`/`yarn` for plugins that build
  native bits (treesitter parsers, LeaderF, markdown-preview).

## Install

lazy.nvim bootstraps itself on first launch — just start Neovim:

```shell
nvim
```

On the first run it clones lazy.nvim and installs every plugin. Use `:Lazy` to
manage them (`:Lazy sync`, `:Lazy update`, `:Lazy clean`).

## Layout

```
init.lua                 -- bootstrap lazy.nvim, load options/keymaps, lazy.setup("plugins")
lua/
  config/
    options.lua          -- editor options + disabled built-ins
    keymaps.lua          -- global, plugin-independent keymaps
    <plugin>.lua         -- per-plugin setup (telescope, lsp, dap, ...)
  plugins/
    completion.lua       -- nvim-cmp + sources
    lsp.lua              -- mason, mason-lspconfig, nvim-lspconfig
    git.lua              -- fugitive, gitlinker, gitsigns, committia
    ui.lua               -- colorscheme, statusline, dashboard, which-key, notify
    treesitter.lua       -- nvim-treesitter
    dap.lua              -- nvim-dap + ui + adapters
    editor.lua           -- nvim-tree, telescope, hop, navigation, ...
    lang.lua             -- vimtex, markdown-preview, rust-tools
```

Each file under `lua/plugins/` returns a list of lazy.nvim specs. The version
lockfile lives in `lazy-lock.json`; commit it to reproduce the exact plugin set.
