-- Editor options and built-in tweaks (no plugin config here).

local g = vim.g
local opt = vim.opt

-- Skip some remote provider loading we don't use.
g.loaded_python3_provider = 0
g.loaded_node_provider = 0
g.loaded_perl_provider = 0
g.loaded_ruby_provider = 0

-- Disable some built-in plugins we don't want.
local disabled_built_ins = {
  "gzip",
  "man",
  "matchit",
  "matchparen",
  "shada_plugin",
  "tarPlugin",
  "tar",
  "zipPlugin",
  "zip",
  "netrwPlugin",
}
for _, plugin in ipairs(disabled_built_ins) do
  g["loaded_" .. plugin] = 1
end

-- Display
opt.listchars = {
  eol = "↲", -- Character to show at the end of lines
  tab = "▸ ", -- Character to show for tabs (notice the space for alignment)
  space = "·", -- Character to show for spaces
  trail = "•", -- Character to show for trailing spaces
  extends = "⟩", -- Character to show when a line is too long and continues beyond screen
  precedes = "⟨", -- Character to show when line begins before the start of the window
  nbsp = "␣", -- Character to show for non-breaking spaces
}
opt.list = true
opt.textwidth = 100
opt.scrolloff = 7
opt.wildignore = { "*.o", "*~", "*.pyc" }
opt.wildmode = "longest,full"
opt.whichwrap:append("<,>,h,l")
opt.inccommand = "nosplit"
opt.lazyredraw = true
opt.showmatch = true
opt.ignorecase = true
opt.smartcase = true
opt.tabstop = 2
opt.softtabstop = 0
opt.expandtab = true
opt.shiftwidth = 2
opt.number = true
opt.relativenumber = true
opt.smartindent = true
opt.laststatus = 3
opt.showmode = false
opt.shada = [['20,<50,s10,h,/100]]
opt.hidden = true
opt.shortmess:append("c")
opt.joinspaces = false
opt.guicursor = [[n-v-c:block,i-ci-ve:ver25,r-cr:hor20,o:hor50]]
opt.updatetime = 100
opt.conceallevel = 2
opt.concealcursor = "nc"
opt.previewheight = 5
opt.undofile = true
opt.synmaxcol = 500
opt.display = "msgsep"
opt.cursorline = true
opt.modeline = false
opt.mouse = "nivh"
opt.signcolumn = "yes:1"
opt.cmdheight = 0
opt.splitbelow = true
opt.splitright = true
opt.timeoutlen = 200
opt.fillchars = [[vert:│,horiz:─,eob: ]]
