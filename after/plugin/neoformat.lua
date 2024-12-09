-- Use Neoformat for formatting JavaScript and TypeScript files
vim.api.nvim_create_autocmd("BufWritePre", {
  pattern = { "*.js", "*.jsx", "*.ts", "*.tsx" },
  command = "Neoformat prettier"
})

-- Use ESLint for JavaScript and TypeScript
vim.g.neoformat_enabled_javascript = { 'eslint' }
vim.g.neoformat_enabled_typescript = { 'eslint' }
