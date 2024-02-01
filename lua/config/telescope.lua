require("telescope").setup({
    defaults = {
        sorting_strategy = "ascending",
        selection_strategy = "reset",
        scroll_strategy = "cycle",
        initial_mode = "normal",
        border = true,
        color_devicons = false,
        layout_strategy = "horizontal",
        layout_config = {
            horizontal = {
                prompt_position = "top",
            }
        },
        preview = { ls_short = true }
    },
    pickers = {
        find_files = {
            disable_devicons = true,
        },
    },
    extensions = {
        file_browser = {
            grouped = true,
            dir_icon = "",
            disable_devicons = true,
        },
    },
})

require("telescope").load_extension("file_browser")
