---@type MappingsTable
local M = {}

M.general = {
  n = {
    ["<C-q>"] = {":q<CR>", "Quit nvim"},
    ["<C-S-q>"] = {":q!<CR>", "Quit force nvim"},
  },
}

-- more keybinds!

return M
