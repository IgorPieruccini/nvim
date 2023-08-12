vim.g.mapleader = " "
vim.keymap.set("n", "<leader>pv", vim.cmd.Ex)

vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")

vim.keymap.set("n", "J", "mzJ`z")

-- jump half page thought the page
-- vim.keymap.set("n", "<C-j>", "<C-d>zz")
-- vim.keymap.set("n", "<C-k>", "<C-u>zz")

-- paste copped string without losing copped buffer
vim.keymap.set("x", "<leader>p", [["_dP]])

vim.keymap.set({ "n", "v" }, "<leader>y", [["+y]])
vim.keymap.set("n", "<leader>Y", [["+Y]])

vim.keymap.set("n", "Q", "<nop>")

vim.keymap.set("n", "<leader>s", [[:%s/\<<C-r><C-w>\>/<C-r><C-w>/gI<Left><Left><Left>]])

vim.keymap.set("n", "<leader>nt", "<cmd>:tabnew<cr>")
vim.keymap.set("n", "<leader>ct", "<cmd>:tabclose<cr>")

vim.keymap.set("n", "<C-j>", "+10");
vim.keymap.set("n", "<C-k>", "-10");
