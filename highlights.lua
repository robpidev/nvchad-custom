-- To find any highlight groups: "<cmd> Telescope highlights"
-- Each highlight group can take a table with variables fg, bg, bold, italic, etc
-- base30 variable names can also be used as colors


local M = {}

---@type Base46HLGroupsList
M.override = {
  CursorLine = {
    -- bg = "#24222d",
    -- bg = "#272630"
    bg = "#292630"
  },
  Comment = {
    italic = true,
  },
  ["@keyword"] = {
    italic = true,
    fg = "purple"
  },
  ["@keyword.function"] = {
    italic = true,
    fg = "purple"
  },
  ["@keyword.return"] = {
    italic = true,
    fg = "purple"
  },
  ["@operator"] = {
    fg = "cyan"
  },
  PmenuSel = {
    bg = "#8964d8",
    fg = "#ffffff"
  },
    CmpItemAbbrMatch = {
    fg = "#8964d8",
  },
  -- NvimTreeFolderIcon = {
  --   fg = "#aa76ff",
  -- },
  CmpItemKindModule = {
    fg = "orange"
  },
  CmpItemKindSnippet = {
    fg = "teal"
  },
  CmpItemKindVariable = {
    fg = "pink"
  },
  CmpItemKindFunction = {
    fg = "blue"
  },
  CmpItemKindMethod = {
    fg = "blue"
  }
}



---@type HLTable
M.add = {
  NvimTreeOpenedFolderName = { fg = "green", bold = true },
}

return M
