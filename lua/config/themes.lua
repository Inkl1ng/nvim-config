require("themery").setup({
    themes = {
        {
            name = "VSCode",
            colorscheme = "vscode"
        },
        {
            name = "JetBrains dracula",
            colorscheme = "darcula-solid"
        },
        {
            name = "JetBrains Fleet",
            colorscheme = "fleet",
            after = [[
                vim.cmd("highlight ColorColumn guibg=#373737")
            ]]
        },
        {
            name = "Dracula",
            colorscheme = "dracula"
        },
        {
            name = "Dracula soft",
            colorscheme = "dracula-soft"
        },
    },
    themeConfigFile = "~/.config/nvim/init.lua",
    livePreview = true
})
