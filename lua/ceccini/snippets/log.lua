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

local simpleLog = s(
  "s:log", fmt(
    [[
    console.log({{{}}})
    ]],
    i(1)
  ));

local objectLog = s("s:log", fmt(
  [[
    console.log("{}", {})
  ]],
  {
    rep(1), i(1)
  }
))


return {
  simpleLog = simpleLog,
  objectLog = objectLog
};
