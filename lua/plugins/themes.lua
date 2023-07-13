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
    }
}

return plugins
