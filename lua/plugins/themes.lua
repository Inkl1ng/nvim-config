local plugins = {
    -- themery (theme manager)
    {
        "zaldih/themery.nvim",
        config = function()
            require("themery").setup({
                themes = {
                {
	                name = "VSCode",
	                colorscheme = "vscode"
                },
	            {
                    name = "Dracula",
	                colorscheme = "dracula"
	            },
                {
                    name = "JetBrains Fleet",
                    colorscheme = "fleet"
                },
                {
                    name = "oxocarbon",
                    colorscheme = "oxocarbon"
                },
                {
                    name = "adwaita",
                    colorscheme = "adwaita"
                },
                {
                    name = "ofirkai (monokai)",
                    colorscheme = "ofirkai"
                }
            },
	        themeConfigFile = "~/.config/nvim/init.lua",
	        livePreview = true,
        })
        end
    },

    -- themes
    {
        "Mofiqul/vscode.nvim",
        "Mofiqul/dracula.nvim",
        "felipeagc/fleet-theme-nvim",
        "nyoom-engineering/oxocarbon.nvim",
        "Mofiqul/adwaita.nvim",
        "ofirgall/ofirkai.nvim",
    }
}

return plugins
