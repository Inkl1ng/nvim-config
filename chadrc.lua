---@type ChadrcConfig 
local M = {}
M.ui = {
  theme = 'vscode_dark',
  statusline = {
    theme = "vscode_colored"
  },
  cmp = {
    style = "default",
    selected_item_bg = "simple"
  },
  telescope = {
    style = "bordered"
  },
  nvdash = {
    load_on_startup = true
  }
}

M.plugins = "custom.plugins"
M.mappings = require "custom.mappings"
return M
