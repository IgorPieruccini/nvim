require("ceccini.remap")
require("ceccini.set")

--set theme colorscheme
-- vim.cmd [[colorscheme tokyonight]]
vim.cmd('colorscheme github_dark')

-- add auto complete for sql files using vim-dadbod-completion'
vim.g.vim_dadbod_completion_mark = 'MYMARK'
vim.api.nvim_exec([[
  augroup CmpSetup
    autocmd!
    autocmd FileType sql,mysql,plsql lua require('cmp').setup.buffer({ sources = {{ name = 'vim-dadbod-completion' }} })
  augroup END
]], false)
