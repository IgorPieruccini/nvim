require('telescope').setup {
  defaults = {
    -- Display only the file name, not the full path
    path_display = { "truncate" }, -- Shorten long paths
    layout_config = {
      width = 0.75                 -- Adjust width to control truncation as needed
    },
    live_grep = { "truncate" }

  }
}

local builtin = require('telescope.builtin')
vim.keymap.set('n', '<leader>ff', builtin.find_files, {})
vim.keymap.set('n', '<leader>fg', builtin.git_files, {})
vim.keymap.set('n', '<leader>fsd', builtin.live_grep, { noremap = true, silent = true })
vim.keymap.set('n', '<leader>fb', builtin.buffers, {})
vim.keymap.set('n', '<leader>gd', builtin.lsp_implementations, {})
vim.keymap.set('n', '<leader>gtd', '<cmd>Telescope lsp_type_definitions<cr>', {})
vim.keymap.set('n', '<leader>fcb', '<cmd>Telescope current_buffer_fuzzy_find<cr>', {})


vim.keymap.set('n', '<leader>fd', '<cmd>Telescope diagnostics<CR>')
vim.keymap.set('n', '<leader>fwd', builtin.lsp_document_symbols)
vim.keymap.set('n', '<leader>fr', builtin.lsp_references)

vim.keymap.set('n', '<leader>fgb', builtin.git_branches)
vim.keymap.set('n', '<leader>fgt', builtin.git_stash)
vim.keymap.set('n', '<leader>fm', builtin.marks, {})
