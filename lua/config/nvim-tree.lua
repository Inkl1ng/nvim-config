require("nvim-tree").setup({
    view = {
        adaptive_size = true,
        float = {
            enable = true,
            open_win_config = {
                relative = "editor",
                border = "single",
            }
        }
    }
})
