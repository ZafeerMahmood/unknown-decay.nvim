local M = {}

function M.get(c, config)
  return {
    -- JSON
    ["@property.json"] = { fg = c.blue },
    ["@label.json"] = { fg = c.blue },
    ["@string.json"] = { fg = c.green },
    ["@number.json"] = { fg = c.red },
    ["@number.float.json"] = { fg = c.red },
    ["@boolean.json"] = { fg = c.purple },
    ["@constant.builtin.json"] = { fg = c.purple },
    ["@constant.null.json"] = { fg = c.purple },
    ["@punctuation.delimiter.json"] = { fg = c.fg },
    ["@punctuation.bracket.json"] = { fg = c.fg },
    ["@comment.json"] = { fg = c.gray, italic = config.is_italic("comments") },

    -- JSONC
    ["@property.jsonc"] = { fg = c.blue },
    ["@label.jsonc"] = { fg = c.blue },
    ["@string.jsonc"] = { fg = c.green },
    ["@number.jsonc"] = { fg = c.red },
    ["@boolean.jsonc"] = { fg = c.purple },
    ["@constant.builtin.jsonc"] = { fg = c.purple },
    ["@punctuation.delimiter.jsonc"] = { fg = c.fg },
    ["@punctuation.bracket.jsonc"] = { fg = c.fg },
    ["@comment.jsonc"] = { fg = c.gray, italic = config.is_italic("comments") },

    -- JSON5
    ["@property.json5"] = { fg = c.blue },
    ["@string.json5"] = { fg = c.green },
    ["@number.json5"] = { fg = c.red },
    ["@boolean.json5"] = { fg = c.purple },
    ["@constant.builtin.json5"] = { fg = c.purple },
    ["@comment.json5"] = { fg = c.gray, italic = config.is_italic("comments") },

    -- YAML
    ["@property.yaml"] = { fg = c.blue },
    ["@label.yaml"] = { fg = c.purple },
    ["@string.yaml"] = { fg = c.green },
    ["@number.yaml"] = { fg = c.red },
    ["@number.float.yaml"] = { fg = c.red },
    ["@boolean.yaml"] = { fg = c.teal },
    ["@constant.builtin.yaml"] = { fg = c.teal },
    ["@punctuation.special.yaml"] = { fg = c.purple },
    ["@comment.yaml"] = { fg = c.gray, italic = config.is_italic("comments") },
    ["@punctuation.delimiter.yaml"] = { fg = c.fg },

    -- TOML
    ["@type.toml"] = { fg = c.blue },
    ["@property.toml"] = { fg = c.blue },
    ["@string.toml"] = { fg = c.green },
    ["@number.toml"] = { fg = c.red },
    ["@boolean.toml"] = { fg = c.teal },
    ["@comment.toml"] = { fg = c.gray, italic = config.is_italic("comments") },
    ["@punctuation.bracket.toml"] = { fg = c.fg },

    -- Vim syntax fallback
    jsonFold = {},
    jsonBoolean = { fg = c.purple },
    jsonNull = { fg = c.purple },
    jsonKeyword = { fg = c.blue },
    jsonKeywordMatch = { fg = c.blue },
    jsonString = { fg = c.green },
    jsonQuote = { fg = c.green },
    jsonNumber = { fg = c.red },
    jsonBraces = { fg = c.fg },
    jsonComma = { fg = c.fg },
    jsonColon = { fg = c.fg },
    jsonNoise = { fg = c.fg },
  }
end

return M
