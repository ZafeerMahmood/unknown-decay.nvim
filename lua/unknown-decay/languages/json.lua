-- unknown-decay/languages/json.lua
-- JSON specific highlight overrides
-- Mapped from VS Code decay.json tokenColors

local M = {}

function M.get(c, config)
  return {
    -- ============================================
    -- JSON SPECIFIC
    -- ============================================

    -- Property names (keys)
    -- support.type.property-name.json -> #70a5eb
    -- source.json meta.structure.dictionary.json > string.quoted.json -> #70a5eb
    ["@property.json"] = { fg = c.blue },
    ["@label.json"] = { fg = c.blue },

    -- String values
    -- source.json meta.structure.dictionary.json > value.json > string.quoted.json -> #78dba9
    ["@string.json"] = { fg = c.green },

    -- Numbers
    -- constant.numeric -> #e05f65
    ["@number.json"] = { fg = c.red },
    ["@number.float.json"] = { fg = c.red },

    -- Booleans (true, false) -> purple
    ["@boolean.json"] = { fg = c.purple },

    -- null -> purple
    ["@constant.builtin.json"] = { fg = c.purple },
    ["@constant.null.json"] = { fg = c.purple },

    -- Punctuation - colons (:)
    -- Default foreground for delimiters
    ["@punctuation.delimiter.json"] = { fg = c.fg },

    -- Punctuation - brackets ({}, [])
    ["@punctuation.bracket.json"] = { fg = c.fg },

    -- Comments (JSONC - JSON with comments)
    ["@comment.json"] = { fg = c.gray, italic = config.is_italic("comments") },
    ["@comment.jsonc"] = { fg = c.gray, italic = config.is_italic("comments") },

    -- ============================================
    -- JSONC SPECIFIC (JSON with Comments)
    -- ============================================

    ["@property.jsonc"] = { fg = c.blue },
    ["@label.jsonc"] = { fg = c.blue },
    ["@string.jsonc"] = { fg = c.green },
    ["@number.jsonc"] = { fg = c.red },
    ["@boolean.jsonc"] = { fg = c.purple },
    ["@constant.builtin.jsonc"] = { fg = c.purple },
    ["@punctuation.delimiter.jsonc"] = { fg = c.fg },
    ["@punctuation.bracket.jsonc"] = { fg = c.fg },

    -- ============================================
    -- JSON5 SPECIFIC
    -- ============================================

    ["@property.json5"] = { fg = c.blue },
    ["@string.json5"] = { fg = c.green },
    ["@number.json5"] = { fg = c.red },
    ["@boolean.json5"] = { fg = c.purple },
    ["@constant.builtin.json5"] = { fg = c.purple },
    ["@comment.json5"] = { fg = c.gray, italic = config.is_italic("comments") },

    -- ============================================
    -- YAML SPECIFIC (Similar structure to JSON)
    -- ============================================

    -- Property names (keys)
    ["@property.yaml"] = { fg = c.blue },
    ["@label.yaml"] = { fg = c.blue },

    -- String values
    ["@string.yaml"] = { fg = c.green },

    -- Numbers
    ["@number.yaml"] = { fg = c.red },
    ["@number.float.yaml"] = { fg = c.red },

    -- Booleans
    ["@boolean.yaml"] = { fg = c.teal },

    -- null
    ["@constant.builtin.yaml"] = { fg = c.teal },

    -- Anchors and aliases
    ["@label.yaml"] = { fg = c.purple },
    ["@punctuation.special.yaml"] = { fg = c.purple },

    -- Comments
    ["@comment.yaml"] = { fg = c.gray, italic = config.is_italic("comments") },

    -- Delimiters
    ["@punctuation.delimiter.yaml"] = { fg = c.fg },

    -- ============================================
    -- TOML SPECIFIC
    -- ============================================

    -- Section headers [section]
    ["@type.toml"] = { fg = c.blue },

    -- Property names
    ["@property.toml"] = { fg = c.blue },

    -- String values
    ["@string.toml"] = { fg = c.green },

    -- Numbers
    ["@number.toml"] = { fg = c.red },

    -- Booleans
    ["@boolean.toml"] = { fg = c.teal },

    -- Comments
    ["@comment.toml"] = { fg = c.gray, italic = config.is_italic("comments") },

    -- Brackets
    ["@punctuation.bracket.toml"] = { fg = c.fg },

    -- ============================================
    -- VIM SYNTAX GROUPS (for non-treesitter fallback)
    -- ============================================

    -- JSON
    jsonFold = {},  -- Container
    jsonBoolean = { fg = c.purple },
    jsonNull = { fg = c.purple },
    jsonKeyword = { fg = c.blue },  -- Keys
    jsonKeywordMatch = { fg = c.blue },  -- Keys with quotes
    jsonString = { fg = c.green },  -- String values
    jsonQuote = { fg = c.green },  -- Quotes (default to string color)
    jsonNumber = { fg = c.red },
    jsonBraces = { fg = c.fg },
    jsonComma = { fg = c.fg },
    jsonColon = { fg = c.fg },
    jsonNoise = { fg = c.fg },  -- Punctuation
  }
end

return M