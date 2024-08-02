vim.g.mapleader = " "
vim.keymap.set("n", "<leader>pv", vim.cmd.Ex)

vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")

vim.keymap.set("n", "J", "mzJ`z")

vim.keymap.set("x", "<leader>p", [["_dP]])

vim.keymap.set({ "n", "v" }, "<leader>y", [["+y]])
vim.keymap.set("n", "<leader>Y", [["+Y]])

vim.keymap.set("n", "Q", "<nop>")

vim.keymap.set("n", "<leader>s", [[:%s/\<<C-r><C-w>\>/<C-r><C-w>/gI<Left><Left><Left>]])

vim.keymap.set("n", "<C-y>", "<cmd>:tabnew<cr>")
vim.keymap.set("n", "<C-x>", "<cmd>:tabclose<cr>")
vim.keymap.set("n", "<C-m>", "<cmd>:tabnext<cr>")
vim.keymap.set("n", "<C-n>", "<cmd>:tabprevious<cr>")

vim.keymap.set("n", "<C-o>", "+10");
vim.keymap.set("n", "<C-i>", "-10");

vim.keymap.set("n", "<c-k>", "<cmd>:wincmd k<cr>");
vim.keymap.set("n", "<c-j>", "<cmd>:wincmd j<cr>");
vim.keymap.set("n", "<c-h>", "<cmd>:wincmd h<cr>");
vim.keymap.set("n", "<c-l>", "<cmd>:wincmd l<cr>");


vim.keymap.set("n", "<C-h>", "<cmd>TmuxNavigateLeft<cr>")
vim.keymap.set("n", "<C-j>", "<cmd>TmuxNavigateDown<cr>")
vim.keymap.set("n", "<C-k>", "<cmd>TmuxNavigateUp<cr>")
vim.keymap.set("n", "<C-l>", "<cmd>TmuxNavigateRight<cr>")
