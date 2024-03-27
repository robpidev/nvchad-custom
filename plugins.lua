local overrides = require "custom.configs.overrides"

-- @type NvPluginSpec[]
local plugins = {
    -- Override plugin definition options
    {
        "Exafunction/codeium.vim",
        event = "BufEnter",
    },
<<<<<<< HEAD
=======
  },
  {
    "nvim-neo-tree/neo-tree.nvim",
    branch = "v3.x",
    dependencies = {
      "nvim-lua/plenary.nvim",
      "nvim-tree/nvim-web-devicons", -- not strictly required, but recommended
      "MunifTanjim/nui.nvim",
    },
    config = function()
      require "custom.configs.neo-tree"
    end,
    lazy = false,
  },
>>>>>>> origin

    -- animation identation
    {
        "echasnovski/mini.indentscope",
        lazy = false,
        opts = {
            symbol = "│",
            options = { try_as_border = true },
        },
    },
    {
        "nvim-neo-tree/neo-tree.nvim",
        branch = "v3.x",
        dependencies = {
            "nvim-lua/plenary.nvim",
            "nvim-tree/nvim-web-devicons", -- not strictly required, but recommended
            "MunifTanjim/nui.nvim",
        },
        config = function()
            require "custom.configs.neo-tree"
        end,
        -- lazy = false,
    },

    {
        "neovim/nvim-lspconfig",
        opts = overrides.lspconfig,
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
            "HiPhish/rainbow-delimiters.nvim",
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
        dependencies = {
            "neovim/nvim-lspconfig",
        },
        ft = "rust",
        opts = function()
            return require "custom.configs.rust-tools"
        end,
        -- dependencies = {
        --   -- "nvim-lua/plenary.nvim",
        --   -- "mfussenegger/nvim-dap",
        -- },
        -- config = function()
        --   require "custom.configs.rust-tools"
        -- end,
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
        "rcarriga/nvim-dap-ui",
        config = function()
            require("dapui").setup()
        end,
        dependencies = {
            {
                "mfussenegger/nvim-dap",
                config = function()
                    require "custom.configs.nvim-dap"
                end,
            },
            "nvim-lua/plenary.nvim",
            "nvim-neotest/nvim-nio",
        },
        lazy = false,
    },
    -- {
    --   "NvChad/nvim-colorizer.lua",
    --   enabled = false,
    -- },

    -- Uncomment if you want to re-enable which-key
    -- {
    --   "folke/which-key.nvim",
    --   enabled = true,
    -- },
}

return plugins
