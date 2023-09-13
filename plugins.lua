local overrides = require "custom.configs.overrides"

-- @type NvPluginSpec[]
local plugins = {
  -- Override plugin definition options
  {
    "nvim-neo-tree/neo-tree.nvim",
    branch = "v3.x",
    dependencies = {
      "nvim-lua/plenary.nvim",
      "nvim-tree/nvim-web-devicons", -- not strictly required, but recommended
      "MunifTanjim/nui.nvim",
    },
    config = function ()
      require "custom.configs.neo-tree"
    end,
    lazy = false,
  },

  {
    "neovim/nvim-lspconfig",
    dependencies = {
      -- format & linting
      {
        "jose-elias-alvarez/null-ls.nvim",
        config = function()
          require "custom.configs.null-ls"
        end,
      },
    },
    config = function()
      require "plugins.configs.lspconfig"
      require "custom.configs.lspconfig"
    end, -- Override to setup mason-lspconfig
  },
  -- override plugin configs
  {
    "williamboman/mason.nvim",
    opts = overrides.mason,
  },
  {
    "nvim-treesitter/nvim-treesitter",
    opts = overrides.treesitter,
    dependencies = {
      -- bracket colorizer
      "p00f/nvim-ts-rainbow",
      config = function()
        require "custom.configs.rainbow"
      end,
    },
  },
  {
    "NvChad/nvterm",
    opts = overrides.nvterm,
  },

  {
    "nvim-tree/nvim-tree.lua",
    opts = overrides.nvimtree,
  },

  {
    "hrsh7th/nvim-cmp",
    dependencies = {
      "hrsh7th/cmp-emoji",
    },
    opts = overrides.cmp,
  },

  -- Install a plugin
  {
    "max397574/better-escape.nvim",
    event = "InsertEnter",
    config = function()
      require("better_escape").setup()
    end,
  },

  -- Rust tools
  {
    "simrat39/rust-tools.nvim",
    config = function()
      require "custom.configs.rust-tools"
    end,
  },

  -- To make a plugin not be loaded
  -- Color picker
  {
    "ziontee113/color-picker.nvim",
    config = function()
      require "custom.configs.picker"
    end,
  },

  -- Multi cursor
  {
    "mg979/vim-visual-multi",
    lazy = false,
  },
  -- debudg
  {
    "mfussenegger/nvim-dap",
    dependencies = {
      {
        "Pocco81/DAPInstall.nvim",
      },

      {
        "nvim-lua/plenary.nvim",
      },
    },
    config = function()
      require "custom.configs.nvim-dap"
    end,
  },

  -- {
  --   "NvChad/nvim-colorizer.lua",
  --   enabled = false
  -- },

  -- Uncomment if you want to re-enable which-key
  -- {
  --   "folke/which-key.nvim",
  --   enabled = true,
  -- },
}

return plugins
