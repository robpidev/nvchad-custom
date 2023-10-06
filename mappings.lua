-- @type MappingsTable
local M = {}

M.general = {
  n = {
    -- null_ls format on Save
    ["<C-s>"] = { ":w<CR>", "Format on save" },
    ["<leader>qq"] = { ":qall!<CR>", "Quit nvim" },
    ["<C-q>"] = { ":q<CR>", "Quit nvim" },
    -- ["<C-S-q>"] = {":qall!<CR>", "Quit force nvim"},
    -- ["<C-n>"] = { ":Neotree toggle<CR>" },
    -- dap
  },

  i = {
    ["<C-q>"] = { "<Esc>:q<CR>", "Quit nvim" },
    ["<C-s>"] = { "<Esc>:w<CR>a", "Save on insert mode" },
  },
}

-- more keybinds!
--
M.dap = {
  n = {
    ["<leader>db"] = { ":lua require'dap'.toggle_breakpoint()<CR>", "Toggle breakpoint" },
    ["<leader>dc"] = { ":lua require'dap'.continue()<CR>", "Continue" },
    ["<leader>di"] = { ":lua require'dap'.step_into()<CR>", "Step into" },
    ["<leader>do"] = { ":lua require'dap'.step_over()<CR>", "Step over" },
    ["<leader>dO"] = { ":lua require'dap'.step_out()<CR>", "Step out" },
    ["<leader>dl"] = { ":lua require'dap'.run_last()<CR>", "Run last" },
    ["<leader>dt"] = { ":lua require'dap'.terminate()<CR>", "Terminate" },
    ["<leader>dr"] = { ":lua require'dap'.repl.toggle()<CR>", "Toggle repl" },
    ["<leader>dp"] = { ":lua require'dap'.pause.toggle()<CR>", "Toggle pause" },
    ["<leader>ds"] = { ":lua require'dap.session'.start()<CR>", "Start session" },

    -- dapui
    ["<leader>de"] = { ":lua require'dapui'.eval()<CR>", "Eval" },
    ["<leader>du"] = { ":lua require'dapui'.toggle()<CR>", "Toggle UI" },
  },
}

M.rust = {
  n = {
    ["<leader>rr"] = { ":RustRun<CR>", "Run" },
    ["<leader>rc"] = { ":RustCheck<CR>", "Check" },
    ["<leader>rd"] = { ":RustDebuggables<CR>", "Debug" },
  },
}

return M
