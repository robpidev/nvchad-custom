---@type MappingsTable
local M = {}

M.general = {
  n = {
    ["<C-q>"] = {":q<CR>", "Quit nvim"},
  },
  i = {
    ["<C-s>"] = {"<ESC>:w<CR>a", "Save file"}
  }
}

-- more keybinds!

return M
