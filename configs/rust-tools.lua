local on_attach = require("plugins.configs.lspconfig").on_attach
local capabilities = require("plugins.configs.lspconfig").capabilities
-- local util = require "lspconfig/util"

-- local lspconfig = require "lspconfig"

-- local rt = require "rust-tools"
--
-- rt.setup {
--   server = {
--     on_attach = function(_, bufnr)
--       -- Hover actions
--       vim.keymap.set("n", "<Leader><CR>", rt.hover_actions.hover_actions, { buffer = bufnr })
--       -- Code action groups
--       vim.keymap.set("n", "<Leader>a", rt.code_action_group.code_action_group, { buffer = bufnr })
--     end,
--   },
--   -- dap = {
--   --   adapter = {
--   --     type = "executable",
--   --     command = "lldb-vscode",
--   --     name = "rt_lldb",
--   --   },
--   -- },
-- }
--

local options = {
  server = {
    on_attach = on_attach,
    capabilities = capabilities,
  },
}

return options
