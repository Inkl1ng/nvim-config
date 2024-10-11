require("telescope").setup({
    defaults = {
        layout_strategy = "horizontal",
        layout_config = {
            prompt_position = "top",
            preview_width = 0.7
        },
        sorting_strategy = "ascending",
        initial_mode = "normal",
        borderchars = { "─", "│", "─", "│", "┌", "┐", "┘", "└" }
    },
})
