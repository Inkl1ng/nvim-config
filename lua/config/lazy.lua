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

    -- Completion
    {
        "hrsh7th/nvim-cmp",
        dependencies = {
            "hrsh7th/cmp-nvim-lsp",
            "hrsh7th/cmp-nvim-lsp-signature-help",
            "L3MON4D3/LuaSnip",
        },
        config = function()
            require("config.nvim-cmp")
        end
    },

    -- Themes
    {
        "Mofiqul/vscode.nvim",
        config = function()
            require("config.themes.vscode")
        end
    }
}

require("lazy").setup(plugins)

-- all LSP plugins get setup in one file
require("config.lsp")