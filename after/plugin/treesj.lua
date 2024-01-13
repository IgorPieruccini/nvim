-- For use default preset and it work with dot
vim.keymap.set('n', '<leader>m', require('treesj').toggle)
-- For extending default preset with `recursive = true`, but this doesn't work with dot
vim.keymap.set('n', '<leader>M', function()
  require('treesj').toggle({ split = { recursive = true } })
end)
