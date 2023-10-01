local plugins = {
    {
        "nvim-treesitter/nvim-treesitter",
        build = ":TSUpdate"
    },
    {
        "m4xshen/smartcolumn.nvim",
        opts = {
            colorcolumn = { "80", "100" },
            scope = "line"
        },
    },
    {
        "lukas-reineke/indent-blankline.nvim",
        main = "ibl",
        opts = {
            show_current_context = true,
            show_current_context_start = true,
        },
    },
    {
        'nvim-lua/plenary.nvim'
    },
    {
        'nvim-telescope/telescope-file-browser.nvim',
        dependencies = {
            'nvim-telescope/telescope.nvim',
            'nvim-lua/plenary.nvim'
        },
    },
    {
        'akinsho/bufferline.nvim',
        version = '*',
    },
    {
        'kdheepak/lazygit.nvim',
        dependencies = {
            'nvim-lua/plenary.nvim'
        }
    },
    {
        'jakemason/ouroboros',
        dependencies = {
            'nvim-lua/plenary.nvim'
        }
    },
    {
        'akinsho/toggleterm.nvim',
        version = "*",
        opts = {
            size = 20,
            open_mapping = [[<a-i>]],
            direction = 'float'
        }
    }
}

return plugins
