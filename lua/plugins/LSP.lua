local plugins = {
    "neovim/nvim-lspconfig",
    "hrsh7th/nvim-cmp",
    "hrsh7th/cmp-nvim-lsp",
    "williamboman/mason.nvim",
    "williamboman/mason-lspconfig.nvim",
    {
        "L3MON4D3/LuaSnip",
        version = "v2.2",
        build = "make_install_jsregexp"
    },
    {
        "nvim-treesitter/nvim-treesitter",
        build = ":TSUpdate"
    }
}

return plugins
