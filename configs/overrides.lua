local M = {}

M.treesitter = {
  ensure_installed = {
    "vim",
    "lua",
    "html",
    "css",
    "javascript",
    "c",
    "markdown",
    "markdown_inline",
  },
  indent = {
    enable = true,
    disable = {
      "python"
    },
  },
}

M.mason = {
  ensure_installed = {
    -- lua stuff
    "lua-language-server",
    "stylua",

    -- web dev stuff
    "css-lsp",
    "html-lsp",
    "typescript-language-server",
    "deno",
  },
}
-- git support in nvimtree
M.nvimtree = {
  git = {
    enable = true,
  },

  renderer = {
    highlight_git = true,
    indent_width = 2,
    indent_markers = {
      enable = true,
      icons = {
        item = "├",
      }
    },
    icons = {
      padding = " ",
      webdev_colors = true,
      modified_placement = "after",
      git_placement = "after",
      show = {
        folder_arrow = false,
        git = true
      },
      symlink_arrow = " ➛ ",
      glyphs = {
        folder = {
          default = "",
          open  = "",
          empty = "",
          empty_open = ""
        },
      }
    },
  },
}


M.cmp = {
  formatting = {
    -- fields = { "kind", "abbr", "menu" },
  },
}

return M
