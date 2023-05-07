local plugins = {
  {
    "kdheepak/lazygit.nvim",
    lazy=true,
    cmd = "LazyGit"
  },
  {
    "neovim/nvim-lspconfig",
    config = function ()
      require "plugins.configs.lspconfig"
      require "custom.configs.lspconfig"
    end,
    }
}

return plugins
