local lsp_zero = require('lsp-zero')

lsp_zero.on_attach(function(client, bufnr)
  lsp_zero.default_keymaps({buffer = bufnr})

  vim.keymap.set('n', 'sh', '<cmd>ClangdSwitchSourceHeader<cr>', {buffer = bufnr})
end)

lsp_zero.extend_lspconfig({
  sign_text = true,
  lsp_attach = lsp_attach,
  capabilities = require('cmp_nvim_lsp').default_capabilities(),
})

require('mason').setup({})
require('mason-lspconfig').setup({
  handlers = {
    function(server_name)
      require('lspconfig')[server_name].setup({})
    end,
    
    clangd = function()
      require("lspconfig").clangd.setup({
        capabilities = lsp_capabilities,
        cmd = {
          "clangd",
          "--header-insertion=never",
          "--function-arg-placeholders",
          "--background-index=0",
          -- "--compile-commands-dir=.",
        },
        filetypes = { "c", "cpp", "objc", "objcpp", "cuda", "proto", "h", "hpp"},
        root_dir = require("lspconfig").util.root_pattern(
          ".clangd",
          ".clang-tidy",
          ".clang-format",
          "compile_commands.json",
          "compile_flags.txt",
          "configure.ac",
          ".git"
        ),
        single_file_support = true
      })
    end
  }
})

local cmp = require('cmp')
local cmp_action = require('lsp-zero').cmp_action()
local select_opts = {behavior = cmp.SelectBehavior.Select}
vim.g.cmp_toggle = false

cmp.setup({
  enabled = function()
    return vim.g.cmp_toggle
  end,
  sources = {
    {name = 'path'},
    {name = 'nvim_lsp'},
    {name = 'luasnip', keyword_length = 2},
    {name = 'buffer', keyword_length = 3},
  },
  mapping = cmp.mapping.preset.insert({
    -- confirm completion item
    ['<Enter>'] = cmp.mapping.confirm({ select = false }),

    ['<tab>'] = cmp.mapping.select_next_item(select_opts),
    ['<s-tab>'] = cmp.mapping.select_prev_item(select_opts),

    -- trigger completion menu
    ['<C-Space>'] = cmp.mapping.complete(),

    -- scroll up and down the documentation window
    ['<C-u>'] = cmp.mapping.scroll_docs(-4),
    ['<C-d>'] = cmp.mapping.scroll_docs(4),   

    -- navigate between snippet placeholders
    ['<C-f>'] = cmp_action.luasnip_jump_forward(),
    ['<C-b>'] = cmp_action.luasnip_jump_backward(),
  }),
  snippet = {
    expand = function(args)
      -- You need Neovim v0.10 to use vim.snippet
      require('luasnip').lsp_expand(args.body)
    end,
  },
  window = {
    completion = cmp.config.window.bordered(),
    documentation = cmp.config.window.bordered(),
  },
})
-- max entires to show at once
vim.cmd('set pumheight=12')
-- keybinding to toggle on/off autocomplete
vim.keymap.set(
  'n',
  '<leader>au',
  function()
    vim.g.cmp_toggle = not vim.g.cmp_toggle
    local status

    if vim.g.cmp_toggle then
      status = 'ENABLED'
    else
      status = 'DISABLED'
    end

    print('nvim-cmp', status)
  end
)
