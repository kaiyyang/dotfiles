local dap_ok, dap = pcall(require, "dap")
local dap_ui_ok, ui = pcall(require, "dapui")
 
if not (dap_ok and dap_ui_ok) then
  require("notify")("nvim-dap or dap-ui not installed!", "warning") -- nvim-notify is a separate plugin, I recommend it too!
  return
end
 
vim.fn.sign_define('DapBreakpoint', { text = '🐞' })

-- Start debugging session
vim.keymap.set("n", "<leader>ds", function()
  dap.continue()
  ui.toggle({})
  vim.api.nvim_feedkeys(vim.api.nvim_replace_termcodes("<C-w>=", false, true, true), "n", false) -- Spaces buffers evenly
end, {desc= "dap start debug session"})
vim.keymap.set("n", "<leader>dt", ui.toggle, {desc= "dap toggle ui"})
-- Set breakpoints, get variable values, step into/out of functions, etc.
vim.keymap.set("n", "<leader>dl", require("dap.ui.widgets").hover, {desc = "dap ui hover"})
vim.keymap.set("n", "<leader>dc", dap.continue ,{desc = "dap continue" })
vim.keymap.set("n", "<leader>db", dap.toggle_breakpoint, {desc = "dap toggle bp"})
vim.keymap.set("n", "<leader>dn", dap.step_over, {desc= "dap step over"})
vim.keymap.set("n", "<leader>di", dap.step_into, {desc= "dap step into"})
vim.keymap.set("n", "<leader>do", dap.step_out, {desc= "dap step out"})
vim.keymap.set("n", "<leader>dC", function()
  dap.clear_breakpoints()
  require("notify")("Breakpoints cleared", "warn")
end, {desc="dap clear bps"})
 
-- Close debugger and clear breakpoints
vim.keymap.set("n", "<leader>de", function()
  dap.clear_breakpoints()
  ui.toggle({})
  dap.terminate()
  vim.api.nvim_feedkeys(vim.api.nvim_replace_termcodes("<C-w>=", false, true, true), "n", false)
  require("notify")("Debugger session ended", "warn")
end, {desc= "dap end all"})

ui.setup()
