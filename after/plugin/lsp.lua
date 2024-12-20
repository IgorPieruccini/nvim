local lsp = require('lsp-zero').preset({
  manage_nvim_cmp = {
    set_sources = 'recommended'
  }
})

-- Fix Undefined global 'vim'
lsp.nvim_workspace()

lsp.ensure_installed({
  'ts_ls',
  'eslint',
  'html',
  'cssls',
  'jsonls'
})

lsp.on_attach(function(client, bufnr)
  local opts = { buffer = bufnr, remap = false }

  lsp.default_keymaps({ buffer = bufnr })
  lsp.buffer_autoformat({});

  vim.keymap.set("n", "gd", function() vim.lsp.buf.definition() end, opts)
  vim.keymap.set("n", "K", function() vim.lsp.buf.hover() end, opts)
  vim.keymap.set("n", "ca", function() vim.lsp.buf.code_action() end, opts)
  -- vim.keymap.set("n", "gr", function() vim.lsp.buf.references() end, opts)
  vim.keymap.set("n", "<leader>rn", function() vim.lsp.buf.rename() end, opts)
  vim.keymap.set("i", "<C-h>", function() vim.lsp.buf.signature_help() end, opts)
end)

lsp.set_sign_icons({
  error = '✘',
  warn = '▲',
  hint = '⚑',
  info = '»'
})

lsp.setup()

local cmp = require('cmp')
local cmp_action = require('lsp-zero').cmp_action()
local cmp_format = require('lsp-zero').cmp_format()
require('luasnip.loaders.from_vscode').lazy_load()

cmp.setup({
  sources = {
    { name = 'nvim_lsp' },
    { name = 'luasnip' },
  },
  mapping = cmp.mapping.preset.insert({
    ['<C-f>'] = cmp_action.luasnip_jump_forward(),
    ['<C-b>'] = cmp_action.luasnip_jump_backward(),
    ['<CR>'] = cmp.mapping.confirm({ select = false }),
  }),
  --- (Optional) Show source name in completion menu
  -- formatting = cmp_format,
})

--default keybinds documentation: https://github.com/VonHeikemen/lsp-zero.nvim/blob/v2.x/doc/md/lsp.md#enable-format-on-save
