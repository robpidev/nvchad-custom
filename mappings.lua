---@type MappingsTable
local M = {}

M.general = {
  n = {
    ["<C-q>"] = {":q<CR>", "Quit nvim"},
    ["<C-S-q>"] = {":q!<CR>", "Quit force nvim"},
  },

  i = {
    ["<C-q>"] = {"<Esc>:q<CR>", "Quit nvim"},
    ["<C-s>"] = {"<Esc>:w<CR>a", "Save on insert mode"}
  }
}


-- more keybinds!

return M
