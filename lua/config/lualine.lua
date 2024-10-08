require("lualine").setup({
    options = {
        theme = "codedark",
        component_separators = { left = "", right = "" },
        section_separators = { left = "", right = "" },
    },
    extensions = {
        "nvim-tree",
        "nvim-dap-ui"
    }
})
