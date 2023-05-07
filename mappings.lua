local M = {}

M.disabled = {

}

M.abc = {
  n = {
    ["<leader>gg"] = {":LazyGit<Enter>", "Open LazyGit"},
    ["<Enter>"] = {"o<Esc>", "New Line Below"},
    ["<A-Enter>"] = {"O<Esc>", "New Line Above"}
  }
}

return M
