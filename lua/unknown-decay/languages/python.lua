local M = {}

function M.get(c, config)
  local italic_keywords = config.is_italic("keywords")
  local italic_comments = config.is_italic("comments")

  return {
    -- Variables
    ["@variable.python"] = { fg = c.fg },
    ["@variable.builtin.python"] = { fg = c.purple },
    ["@variable.builtin.self.python"] = { fg = c.purple },
    ["@variable.builtin.cls.python"] = { fg = c.blue },
    ["@variable.member.python"] = { fg = c.fg_light },
    ["@variable.parameter.python"] = { fg = c.teal, italic = true },
    ["@odp.variable.parameter.python"] = { fg = c.teal, italic = true },

    -- ODP overrides
    ["@odp.keyword.python"] = { fg = c.purple },
    ["@odp.keyword.class.python"] = { fg = c.purple },
    ["@odp.function.builtin.python"] = { fg = c.yellow },
    ["@module.path.python"] = { fg = c.fg },
    ["@type.import.python"] = { fg = c.yellow },
    ["@function.import.python"] = { fg = c.sky },
    ["@odp.import_module.python"] = { fg = c.fg },
    ["@odp.punctuation.bracket.python"] = { fg = c.blue, italic = false },
    ["@odp.punctuation.delimiter.python"] = { fg = c.blue, italic = false },
    ["@odp.punctuation.python"] = { fg = c.blue, italic = false },
    ["@odp"] = { fg = c.teal, italic = true },

    -- Decorators
    ["@function.decorator.python"] = { fg = c.sky },
    ["@attribute.python"] = { fg = c.teal },
    ["@attribute.builtin.python"] = { fg = c.teal },

    -- Types
    ["@type.builtin.python"] = { fg = c.yellow },
    ["@type.python"] = { fg = c.yellow },
    ["@type.exception.python"] = { fg = c.yellow },
    ["@constructor.python"] = { fg = c.yellow },

    -- Functions
    ["@function.python"] = { fg = c.sky },
    ["@function.call.python"] = { fg = c.sky },
    ["@function.method.python"] = { fg = c.sky },
    ["@function.method.call.python"] = { fg = c.sky },
    ["@function.builtin.python"] = { fg = c.yellow },
    ["@function.method.dunder.python"] = { fg = c.teal },
    ["@function.method.call.dunder.python"] = { fg = c.teal },
    ["@function.method.special.python"] = { fg = c.teal },

    -- Keywords
    ["@keyword.import.python"] = { fg = c.purple, italic = true },
    ["@keyword.python"] = { fg = c.purple, italic = italic_keywords },
    ["@keyword.conditional.python"] = { fg = c.purple, italic = italic_keywords },
    ["@keyword.repeat.python"] = { fg = c.purple, italic = italic_keywords },
    ["@keyword.exception.python"] = { fg = c.purple, italic = italic_keywords },
    ["@keyword.return.python"] = { fg = c.purple },
    ["@keyword.operator.python"] = { fg = c.purple },
    ["@keyword.function.python"] = { fg = c.purple },
    ["@keyword.type.python"] = { fg = c.purple },

    -- Strings
    ["@string.python"] = { fg = c.green },
    ["@string.documentation.python"] = { fg = c.green },
    ["@string.special.python"] = { fg = c.green },
    ["@string.escape.python"] = { fg = c.teal },

    -- Numbers/Constants
    ["@number.python"] = { fg = c.red },
    ["@number.float.python"] = { fg = c.red },
    ["@boolean.python"] = { fg = c.purple },
    ["@constant.builtin.python"] = { fg = c.purple },
    ["@constant.python"] = { fg = c.teal },

    -- Operators/Punctuation
    ["@operator.python"] = { fg = c.fg },
    ["@punctuation.bracket.python"] = { fg = c.blue },
    ["@punctuation.delimiter.python"] = { fg = c.blue },
    ["@punctuation.special.python"] = { fg = c.red },

    -- Comments/Properties
    ["@comment.python"] = { fg = c.gray, italic = italic_comments },
    ["@property.python"] = { fg = c.cyan },
  }
end

return M
