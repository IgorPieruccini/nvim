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

local simpleFunction = s("s:func", fmt(
  [[
      const {} = ({})=> {{

     }}
    ]],
  {
    i(1), i(2)
  }
))

local withReturn = s("s:func", fmt(
  [[
      const {} = ({})=> {{
          return {}
     }}
    ]],
  {
    i(1), i(2), i(3)
  }
))


return {
  simpleFunction = simpleFunction,
  withReturn = withReturn
