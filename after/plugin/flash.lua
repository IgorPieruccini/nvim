require("flash").setup({});


vim.keymap.set("n", "<leader>j", function()
  require("flash").jump()
end)
