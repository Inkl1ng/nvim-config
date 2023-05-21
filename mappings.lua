local M = {}

M.disabled = {

}

M.abc = {
  n = {
    ["<leader>gg"] = {":LazyGit<Enter>", "Open LazyGit"},
    ["<Enter>"] = {"o<Esc>", "New Line Below"},
    ["<A-Enter>"] = {"O<Esc>", "New Line Above"}
  },
  t = {
    ["<Esc>"] = { vim.api.nvim_replace_termcodes("<C-\\><C-N>", true, true, true), "escape terminal mode" },
  }
}

return M
