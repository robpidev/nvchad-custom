-- @type MappingsTable
local M = {}

M.general = {
  n = {
    ["<C-q>"] = {":qall!<CR>", "Quit nvim"},
    -- ["<C-S-q>"] = {":qall!<CR>", "Quit force nvim"},
    -- ["<C-n>"] = {":Neotree toggle<CR>"}
  },

  i = {
    ["<C-q>"] = {"<Esc>:q<CR>", "Quit nvim"},
    ["<C-s>"] = {"<Esc>:w<CR>a", "Save on insert mode"}
  }
}


-- more keybinds!

return M
