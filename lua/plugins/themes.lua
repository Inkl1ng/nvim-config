local plugins =  {
    -- themery (theme manager)
    {
        'zaldih/themery.nvim',
        config = function()
            require("themery").setup({
                themes = {
                    {
                        name = 'VSCode',
                        colorscheme = 'vscode'
                    },
                    {
                        name = 'JetBrains dracula',
                        colorscheme = 'darcula-solid'
                    },
                    {
                        name = 'JetBrains Fleet',
                        colorscheme = 'fleet',
                        after = [[
                            vim.cmd("highlight ColorColumn guibg=#373737")
                        ]]
                    },
                    {
                        name = 'Atom One Dark',
                        colorscheme = 'onedark'
                    },
                    {
                        name = 'Dracula',
                        colorscheme = 'dracula'
                    },
                    {
                        name = 'Dracula soft',
                        colorscheme = 'dracula-soft'
                    },
                },
                themeConfigFile = "~/.config/nvim/init.lua",
                livePreview = true
            })
        end
    },

    -- themes
    {
        'Mofiqul/vscode.nvim',
        {
            'briones-gabriel/darcula-solid.nvim',
            dependencies = { 'rktjmp/lush.nvim' }
        },
        {
            'navarasu/onedark.nvim',
            config = function()
                require('onedark').setup {
                    -- options: dark, darker, cool, deep, warm, warmer, light
                    style = 'warmer'
                }
                require('onedark').load()
            end
        },
        'Mofiqul/dracula.nvim',
        'felipeagc/fleet-theme-nvim'
    }
}

return plugins
