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

local function capitalizeFirstLetter(args)
  local input = args[1][1]
  local capitalized = "set" .. input:sub(1, 1):upper() .. input:sub(2)
  return capitalized
end

local useState = s(
  "s:useState",
  fmt(
    [[
  const [{}, {}] = useState();
  ]],
    {
      i(1),
      f(capitalizeFirstLetter, 1),
    }
  ));

return {
  useState = useState
}
