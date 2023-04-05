---@type ChadrcConfig
local M = {}

-- Path to overriding theme and highlights files
local highlights = require "custom.highlights"

M.ui = {
  hl_override = highlights.override,
  hl_add = highlights.add,
  theme = "ayu_dark",
  transparency = true,
  cmp = {
    -- border_color = "dark_purple",
    style = "default",
    lspkind_text = false,
  },
}
M.plugins = "custom.plugins"

-- check core.mappings for table structure
M.mappings = require "custom.mappings"

-- Icons


return M
