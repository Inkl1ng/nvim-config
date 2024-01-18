local plugins = {
    { 'neovim/nvim-lspconfig' },
    { 'williamboman/mason.nvim' },
    { 'williamboman/mason-lspconfig.nvim' },
    { 'hrsh7th/nvim-cmp' },
    { 'hrsh7th/cmp-nvim-lsp' },
    { 'Civitasv/cmake-tools.nvim' },
    { 'startup-nvim/startup.nvim' },
    { 'nvim-telescope/telescope-file-browser.nvim' },
    {
        'nvim-treesitter/nvim-treesitter',
        build = ":TSUpdate"
    },
    {
        'akinsho/toggleterm.nvim',
        version = "*",
        opts = {
            size = 20,
            open_mapping = [[<a-i>]],
            direction = 'float',
        }
    },
    {
        'akinsho/bufferline.nvim',
        version = '*',
        dependencies = 'nvim-tree/nvim-web-devicons'
    },

    {
        'L3MON4D3/LuaSnip',
        version = 'v2.2',
        build = 'make_install_jsregexp'
    },
    {
        'FeiyouG/commander.nvim',
        dependencies = {
	    'nvim-telescope/telescope.nvim',
	    'nvim-lua/plenary.nvim',
        },
        keys = {
            {'<leader>fc', '<CMD>Telescope commander<CR>', mode = 'n'}
        }
    },
    {
        'stevearc/overseer.nvim',
        opts = {}
    },

}

return plugins
