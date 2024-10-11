local plugins = {
    {
        "akinsho/bufferline.nvim",
        version = "*",
        dependencies = "nvim-tree/nvim-web-devicons",
        config = function()
            require("config.bufferline")
        end
    },

    {
        "nvim-telescope/telescope.nvim",
        branch = "0.1.x",
        dependencies = "nvim-lua/plenary.nvim",
        config = function()
            require("config.telescope")
        end
    },

    {
        "nvim-tree/nvim-tree.lua",
        config = function()
            require("config.nvim-tree")
        end
    },

    {
        "akinsho/toggleterm.nvim",
        config = function()
            require("config.toggleterm")
        end
    },

    {
        "FeiyouG/commander.nvim",
        dependencies = { "nvim-telescope/telescope.nvim" },
        config = function()
            require("config.commander")
        end
    },

    {
        "nvim-treesitter/nvim-treesitter",
        config = function()
            require("config.nvim-treesitter")
        end
    },

    {
        "kdheepak/lazygit.nvim"
    },

    -- LSP plugins
    {
        "neovim/nvim-lspconfig",
        dependencies = {
            "williamboman/mason-lspconfig.nvim",
            "williamboman/mason.nvim"
        },
        config = function()
            require("config.lsp")
        end
    },

    -- DAP
    {
        "mfussenegger/nvim-dap",
        dependencies = {
            "jay-babu/mason-nvim-dap.nvim", -- config for this plugin in lsp.lua
            "rcarriga/nvim-dap-ui",
            "nvim-neotest/nvim-nio"
        },
        config = function()
            require("config.dap")
        end
    },

    -- Completion
    {
        "hrsh7th/nvim-cmp",
        dependencies = {
            "hrsh7th/cmp-nvim-lsp",
            "hrsh7th/cmp-nvim-lsp-signature-help",
            "L3MON4D3/LuaSnip",
            "hrsh7th/cmp-path",
            "hrsh7th/cmp-buffer"
        },
        config = function()
            require("config.nvim-cmp")
        end
    },

    -- Themes
    {
        "zaldih/themery.nvim",
        lazy = false,
        config = function()
            require("config.themery")
        end
    },
    {
        "Mofiqul/vscode.nvim",
        config = function()
            require("config.themes.vscode")
        end
    },

    {
        "felipeagc/fleet-theme-nvim"
    }
}

require("lazy").setup(plugins)

-- all LSP plugins get setup in one file
require("config.lsp")
