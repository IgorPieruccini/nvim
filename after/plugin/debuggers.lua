local dap = require('dap')

dap.adapters.chrome = {
  type = "executable",
  command = "node",
  args = { os.getenv("HOME") .. "/.config/nvim/debuggers/vscode-chrome-debug/out/src/chromeDebug.js" }
}

dap.configurations.javascriptreact = { -- change this to javascript if needed
  {
    type = "chrome",
    request = "attach",
    program = "${file}",
    cwd = vim.fn.getcwd(),
    sourceMaps = true,
    protocol = "inspector",
    port = 9222,
    webRoot = "${workspaceFolder}"
  }
}

dap.configurations.typescriptreact = { -- change to typescript if needed
  {
    type = "chrome",
    request = "attach",
    program = "${file}",
    cwd = vim.fn.getcwd(),
    sourceMaps = true,
    protocol = "inspector",
    port = 9222,
    webRoot = "${workspaceFolder}"
  }
}

dap.configurations.typescript = {
  -- {
  --   type = "chrome",
  --   request = "attach",
  --   program = "${file}",
  --   cwd = vim.fn.getcwd(),
  --   sourceMaps = true,
  --   protocol = "inspector",
  --   port = 9222,
  --   webRoot = "${workspaceFolder}"
  -- }
  {
    type = "jsnode",
    request = "launch",
    name = "typescript",
    program = "${file}",
    cwd = "${file_dir}",
    sourceMaps = true,
    protocol = "inspect",
    console = "integratedTerminal"
  }
}


vim.keymap.set("n", "<F5>", "<cmd>lua require('dap').continue()<CR>", {})
vim.keymap.set("n", "<F10>", "<cmd>lua require('dap').step_over()<CR>", {})
vim.keymap.set("n", "<F11>", "<cmd>lua require('dap').step_into()<CR>", {})
vim.keymap.set("n", "<F12>", "<cmd>lua require('dap').step_out()<CR>", {})
vim.keymap.set("n", "<leader>db", "<cmd>lua require('dap').toggle_breakpoint()<CR>", {})
vim.keymap.set("n", "<leader>dr", "<cmd>lua require('dap').repl.toggle()<CR>", {})
vim.keymap.set("n", "<leader>dl", "<cmd>lua require('dap').run_last()<CR>", {})
