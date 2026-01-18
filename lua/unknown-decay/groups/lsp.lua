-- unknown-decay/groups/lsp.lua
-- LSP semantic token highlight groups from VS Code decay.json semanticTokenColors

local M = {}

function M.get(c, config)
  local italic_parameters = config.is_italic("parameters")

  return {
    -- ============================================
    -- LSP SEMANTIC TOKEN TYPES
    -- From decay.json semanticTokenColors section
    -- ============================================

    -- Namespace
    ["@lsp.type.namespace"] = { fg = c.fg },                 -- entity.name.namespace -> #b6beca
    ["@lsp.type.namespace.python"] = { fg = c.fg },

    -- Types
    ["@lsp.type.type"] = { fg = c.yellow },                  -- entity.name.type -> #f1cf8a
    ["@lsp.type.class"] = { fg = c.yellow },                 -- support.class -> #f1cf8a
    ["@lsp.type.enum"] = { fg = c.yellow },
    ["@lsp.type.interface"] = { fg = c.yellow },
    ["@lsp.type.struct"] = { fg = c.yellow },
    ["@lsp.type.typeParameter"] = { fg = c.yellow },

    -- Enum Member (from semanticTokenColors)
    ["@lsp.type.enumMember"] = { fg = c.teal },              -- enumMember -> #56b6c2

    -- Functions
    ["@lsp.type.function"] = { fg = c.sky },                 -- entity.name.function -> #61afef
    ["@lsp.type.method"] = { fg = c.sky },
    ["@lsp.type.macro"] = { fg = c.purple },

    -- Variables
    ["@lsp.type.variable"] = { fg = c.fg_light },            -- variable -> #dee1e6
    ["@lsp.type.parameter"] = { fg = c.blue, italic = italic_parameters }, -- variable.parameter -> #70a5eb
    ["@lsp.type.property"] = { fg = c.cyan },                -- variable.other.property -> #74bee9

    -- Keywords
    ["@lsp.type.keyword"] = { fg = c.purple },               -- keyword -> #c68aee
    ["@lsp.type.modifier"] = { fg = c.purple },              -- storage.modifier

    -- Other types
    ["@lsp.type.comment"] = { link = "@comment" },
    ["@lsp.type.string"] = { fg = c.green },
    ["@lsp.type.number"] = { fg = c.red },
    ["@lsp.type.regexp"] = { fg = c.teal },
    ["@lsp.type.operator"] = { fg = c.teal },               -- keyword.operator.arithmetic -> #56b6c2
    ["@lsp.type.decorator"] = { fg = c.sky },                -- meta.function.decorator -> #61afef
    ["@lsp.type.event"] = { fg = c.orange },
    ["@lsp.type.selfKeyword"] = { fg = c.purple },           -- Python self -> #c68aee
    ["@lsp.type.selfTypeKeyword"] = { fg = c.purple },

    -- ============================================
    -- LSP SEMANTIC TOKEN MODIFIERS
    -- ============================================

    ["@lsp.mod.deprecated"] = { strikethrough = true },
    ["@lsp.mod.readonly"] = { fg = c.orange },               -- variable.constant -> #e9a180
    ["@lsp.mod.static"] = {},
    ["@lsp.mod.defaultLibrary"] = { fg = c.yellow },         -- variable.defaultLibrary -> #f1cf8a
    ["@lsp.mod.async"] = {},
    ["@lsp.mod.declaration"] = {},
    ["@lsp.mod.definition"] = {},
    ["@lsp.mod.documentation"] = {},
    ["@lsp.mod.abstract"] = { italic = true },

    -- ============================================
    -- LSP TYPE + MODIFIER COMBINATIONS
    -- From decay.json semanticTokenColors
    -- ============================================

    -- variable.constant -> #e9a180 (orange)
    ["@lsp.typemod.variable.constant"] = { fg = c.orange },
    ["@lsp.typemod.variable.readonly"] = { fg = c.orange },

    -- variable.defaultLibrary -> #f1cf8a (yellow)
    ["@lsp.typemod.variable.defaultLibrary"] = { fg = c.yellow },
    ["@lsp.typemod.function.defaultLibrary"] = { fg = c.teal },
    ["@lsp.typemod.method.defaultLibrary"] = { fg = c.teal },

    -- Property combinations
    ["@lsp.typemod.property.readonly"] = { fg = c.orange },
    ["@lsp.typemod.property.declaration"] = { fg = c.cyan },

    -- Class/Type combinations
    ["@lsp.typemod.class.defaultLibrary"] = { fg = c.yellow },
    ["@lsp.typemod.type.defaultLibrary"] = { fg = c.yellow },

    -- Function combinations
    ["@lsp.typemod.function.declaration"] = { fg = c.sky },
    ["@lsp.typemod.function.async"] = { fg = c.sky },
    ["@lsp.typemod.method.declaration"] = { fg = c.sky },
    ["@lsp.typemod.method.async"] = { fg = c.sky },

    -- Parameter combinations
    ["@lsp.typemod.parameter.declaration"] = { fg = c.blue, italic = italic_parameters },
    ["@lsp.typemod.parameter.readonly"] = { fg = c.orange, italic = italic_parameters },

    -- Enum member combination (from semanticTokenColors)
    ["@lsp.typemod.enumMember"] = { fg = c.teal },           -- enumMember -> #56b6c2
    ["@lsp.typemod.enumMember.readonly"] = { fg = c.teal },

    -- ============================================
    -- LANGUAGE-SPECIFIC LSP TOKENS
    -- ============================================

    -- TypeScript
    ["@lsp.type.class.typescript"] = { fg = c.yellow },
    ["@lsp.type.class.typescriptreact"] = { fg = c.yellow },
    ["@lsp.type.interface.typescript"] = { fg = c.yellow },
    ["@lsp.type.interface.typescriptreact"] = { fg = c.yellow },
    ["@lsp.type.enum.typescript"] = { fg = c.yellow },
    ["@lsp.type.enumMember.typescript"] = { fg = c.teal },
    ["@lsp.type.parameter.typescript"] = { fg = c.blue, italic = italic_parameters },
    ["@lsp.type.parameter.typescriptreact"] = { fg = c.blue, italic = italic_parameters },
    ["@lsp.type.property.typescript"] = { fg = c.cyan },
    ["@lsp.type.property.typescriptreact"] = { fg = c.cyan },
    ["@lsp.typemod.variable.readonly.typescript"] = { fg = c.orange },
    ["@lsp.typemod.variable.readonly.typescriptreact"] = { fg = c.orange },
    ["@lsp.typemod.property.readonly.typescript"] = { fg = c.orange },
    ["@lsp.typemod.property.readonly.typescriptreact"] = { fg = c.orange },

    -- JavaScript
    ["@lsp.type.class.javascript"] = { fg = c.yellow },
    ["@lsp.type.class.javascriptreact"] = { fg = c.yellow },
    ["@lsp.type.parameter.javascript"] = { fg = c.blue, italic = italic_parameters },
    ["@lsp.type.parameter.javascriptreact"] = { fg = c.blue, italic = italic_parameters },
    ["@lsp.type.property.javascript"] = { fg = c.cyan },
    ["@lsp.type.property.javascriptreact"] = { fg = c.cyan },

    -- Python
    ["@lsp.type.class.python"] = { fg = c.yellow },
    ["@lsp.type.function.python"] = { fg = c.sky },
    ["@lsp.type.method.python"] = { fg = c.sky },
    ["@lsp.type.parameter.python"] = { fg = c.teal, italic = true }, -- Python params -> teal + italic
    ["@lsp.type.property.python"] = { fg = c.cyan },
    ["@lsp.type.decorator.python"] = { fg = c.teal },        -- support.token.decorator -> #56b6c2
    -- Let treesitter handle base variable color, LSP only overrides specific types
    ["@lsp.type.variable.python"] = {},
    ["@lsp.typemod.variable.readonly.python"] = { fg = c.orange },
    ["@lsp.typemod.function.defaultLibrary.python"] = { fg = c.yellow }, -- super, len, print, etc.

    -- Lua
    ["@lsp.type.function.lua"] = { fg = c.sky },
    ["@lsp.type.variable.lua"] = { fg = c.fg_light },
    ["@lsp.mod.global.lua"] = { fg = c.blue },

    -- Go
    ["@lsp.type.type.go"] = { fg = c.yellow },
    ["@lsp.type.function.go"] = { fg = c.sky },
    ["@lsp.type.method.go"] = { fg = c.sky },
    ["@lsp.type.parameter.go"] = { fg = c.blue, italic = italic_parameters },

    -- Rust
    ["@lsp.type.type.rust"] = { fg = c.yellow },
    ["@lsp.type.struct.rust"] = { fg = c.yellow },
    ["@lsp.type.enum.rust"] = { fg = c.yellow },
    ["@lsp.type.enumMember.rust"] = { fg = c.teal },
    ["@lsp.type.function.rust"] = { fg = c.sky },
    ["@lsp.type.method.rust"] = { fg = c.sky },
    ["@lsp.type.macro.rust"] = { fg = c.purple },
    ["@lsp.type.lifetime.rust"] = { fg = c.fg },             -- storage.modifier.lifetime -> #b6beca
    ["@lsp.type.parameter.rust"] = { fg = c.blue, italic = italic_parameters },
    ["@lsp.typemod.function.defaultLibrary.rust"] = { fg = c.sky }, -- support.function.std -> #61afef

    -- JSON
    ["@lsp.type.property.json"] = { fg = c.blue },           -- support.type.property-name.json -> #70a5eb

    -- YAML
    ["@lsp.type.property.yaml"] = { fg = c.blue },

    -- TOML
    ["@lsp.type.property.toml"] = { fg = c.blue },

    -- ============================================
    -- DISABLE SOME LSP SEMANTIC TOKENS
    -- Let Treesitter handle these instead
    -- ============================================

    -- Uncomment to disable LSP semantic tokens for specific types
    -- ["@lsp.type.comment"] = {},
    -- ["@lsp.type.keyword"] = {},
  }
end

return M