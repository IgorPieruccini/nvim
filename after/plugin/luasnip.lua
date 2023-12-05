local ls = require "luasnip"
local s = ls.snippet
local t = ls.text_node
local i = ls.insert_node
local extras = require("luasnip.extras")
local rep = extras.rep
local fmt = require("luasnip.extras.fmt").fmt
local c = ls.choice_node
local f = ls.function_node
local d = ls.dynamic_node
local sn = ls.snippet_node

vim.keymap.set("i", "<M-Tab>", function()
  if ls.expand_or_jumpable() then
    ls.expand_or_jump()
  end
end, { silent = true })

local log_snippet = require("ceccini.snippets.log")
local func_snippet = require("ceccini.snippets.func")
local use_state_snippet = require("ceccini.snippets.useState")

local common_snipets = {
  log_snippet.objectLog,
  log_snippet.simpleLog,
  func_snippet.simpleFunction,
}

local react_snippets = {
  log_snippet.objectLog,
  log_snippet.simpleLog,
  func_snippet.simpleFunction,
  use_state_snippet.useState
}

ls.add_snippets("javascript", common_snipets);

ls.add_snippets("javascriptreact", react_snippets);

ls.add_snippets("typescript", common_snipets);

ls.add_snippets("typescriptreact", react_snippets);
