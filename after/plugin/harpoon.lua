local mark = require("harpoon.mark")
local ui = require("harpoon.ui")
require("telescope").load_extension('harpoon')

vim.keymap.set("n", "<leader>ha", mark.add_file)
vim.keymap.set("n", "<leader>ht", ui.toggle_quick_menu)
vim.keymap.set("n", "<leader>hl", "<cmd>Telescope harpoon marks<CR>")

vim.keymap.set("n", "<leader>1", function()
  ui.nav_file(1)
end)

vim.keymap.set("n", "<leader>2", function()
  ui.nav_file(2)
end)

vim.keymap.set("n", "<leader>3", function()
  ui.nav_file(3)
end)

vim.keymap.set("n", "<leader>4", function()
  ui.nav_file(4)
end)


vim.keymap.set("n", "<leader>5", function()
  ui.nav_file(5)
end)

vim.keymap.set("n", "<leader>6", function()
  ui.nav_file(6)
end)

vim.keymap.set("n", "<leader>7", function()
  ui.nav_file(7)
end)
