local builtin = require('telescope.builtin')
vim.keymap.set('n', '<leader>ff', builtin.find_files, {})
vim.keymap.set('n', '<leader>fg', builtin.git_files, {})
vim.keymap.set('n', '<leader>fsd', builtin.live_grep, {})
vim.keymap.set('n', '<leader>fb', builtin.buffers, {})
vim.keymap.set('n', '<leader>fsr', builtin.resume, {})
vim.keymap.set('n', '<leader>gd', builtin.lsp_implementations, {})

vim.keymap.set('n', '<leader>fd', '<cmd>Telescope diagnostics<CR>')
vim.keymap.set('n', '<leader>fwd', builtin.lsp_document_symbols)
vim.keymap.set('n', '<leader>fr', builtin.lsp_references)

vim.keymap.set('n', '<leader>fgb', builtin.git_branches)
vim.keymap.set('n', '<leader>fgt', builtin.git_stash)
