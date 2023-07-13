local plugins = {
    {
        "nvim-treesitter/nvim-treesitter",
        build = function()
            require("nvim-treesitter.install").update({ with_sync = true })
        end,
    },
    {
        "williamboman/mason.nvim",
        build = ":MasonUpdate",
        config = function()
            require("mason").setup()
        end,
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
        opts = {
            show_current_context = true,
            show_current_context_start = true,
        },
    },
    {
        'nvim-lua/plenary.nvim'
    },
    {
        'crispgm/nvim-tabline',
        config = true
    }
}

return plugins
