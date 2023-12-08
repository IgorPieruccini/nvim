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

local describe = s(
  "s:describe",
  fmt(
    [[

    describe("{}", ()=> {{
        {}
    }})

    ]], { i(1), i(0) }
  )
);


local it = s(
  "s:it",
  fmt(
    [[

    it("{}", ()=> {{
        {}
    }})

    ]], { i(1), i(0) }
  )
);


local itAsync = s(
  "s:itAsync",
  fmt(
    [[

    it("{}", async()=> {{
        {}
    }})

    ]], { i(1), i(0) }
  )
);


return {
  describe = describe,
  it = it,
  itAsync = itAsync
}
