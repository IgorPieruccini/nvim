require("bufferline").setup {
  options = {
    mode = "buffers",
    tab_size = 20,
    diagnostics = "nvim_lsp",
    offsets = {
      {
        filetype = "neo-tree",
        text = "File Explorer",
        text_align = "center",
        separator = true
      }
    },

  }
}

vim.keymap.set("n", "<leader>bl", '<cmd>BufferLinePick<CR>')
vim.keymap.set("n", "<leader>bc", '<cmd>BufferLinePickClose<CR>')
vim.keymap.set("n", "<leader>ba", '<cmd>BufferLineCloseOthers<CR>')
