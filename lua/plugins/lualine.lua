local plugins = {
    "nvim-lualine/lualine.nvim",
 --   dependencies = { "nvim-tree/nvim-web-devicons", opt = false },
    config = function()
        require("lualine").setup{
            options = {
                icons_enabled = false,
            },
            sections = {
                lualine_a = { 'mode' },
                lualine_b = { 'branch', 'diff', 'diagnostics'},
                lualine_c = {
                    {
                        'filename',
                        path = 3
                    }
                },
                lualine_x = { 'encoding', 'fileformat', 'filetype'},
                lualine_y = { "require'lsp-status'.status()" },
                lualine_z = { 'location' }
            },
        }
    end,
}

return plugins
