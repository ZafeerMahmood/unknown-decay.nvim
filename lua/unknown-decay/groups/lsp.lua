local M = {}

function M.get(c, config)
  local italic_parameters = config.is_italic("parameters")

  return {
    -- Semantic token types
    ["@lsp.type.namespace"] = { fg = c.fg },
    ["@lsp.type.namespace.python"] = { fg = c.fg },
    ["@lsp.type.type"] = { fg = c.yellow },
    ["@lsp.type.class"] = { fg = c.yellow },
    ["@lsp.type.enum"] = { fg = c.yellow },
    ["@lsp.type.interface"] = { fg = c.yellow },
    ["@lsp.type.struct"] = { fg = c.yellow },
    ["@lsp.type.typeParameter"] = { fg = c.yellow },
    ["@lsp.type.enumMember"] = { fg = c.teal },
    ["@lsp.type.function"] = { fg = c.sky },
    ["@lsp.type.method"] = { fg = c.sky },
    ["@lsp.type.macro"] = { fg = c.purple },
    ["@lsp.type.variable"] = { fg = c.fg_light },
    ["@lsp.type.parameter"] = { fg = c.blue, italic = italic_parameters },
    ["@lsp.type.property"] = { fg = c.cyan },
    ["@lsp.type.keyword"] = { fg = c.purple },
    ["@lsp.type.modifier"] = { fg = c.purple },
    ["@lsp.type.comment"] = { link = "@comment" },
    ["@lsp.type.string"] = { fg = c.green },
    ["@lsp.type.number"] = { fg = c.red },
    ["@lsp.type.regexp"] = { fg = c.teal },
    ["@lsp.type.operator"] = { fg = c.teal },
    ["@lsp.type.decorator"] = { fg = c.sky },
    ["@lsp.type.event"] = { fg = c.orange },
    ["@lsp.type.selfKeyword"] = { fg = c.purple },
    ["@lsp.type.selfTypeKeyword"] = { fg = c.purple },

    -- Semantic token modifiers
    ["@lsp.mod.deprecated"] = { strikethrough = true },
    ["@lsp.mod.readonly"] = { fg = c.orange },
    ["@lsp.mod.static"] = {},
    ["@lsp.mod.defaultLibrary"] = { fg = c.yellow },
    ["@lsp.mod.async"] = {},
    ["@lsp.mod.declaration"] = {},
    ["@lsp.mod.definition"] = {},
    ["@lsp.mod.documentation"] = {},
    ["@lsp.mod.abstract"] = { italic = true },

    -- Type + modifier combinations
    ["@lsp.typemod.variable.constant"] = { fg = c.orange },
    ["@lsp.typemod.variable.readonly"] = { fg = c.orange },
    ["@lsp.typemod.variable.defaultLibrary"] = { fg = c.yellow },
    ["@lsp.typemod.function.defaultLibrary"] = { fg = c.teal },
    ["@lsp.typemod.method.defaultLibrary"] = { fg = c.teal },
    ["@lsp.typemod.property.readonly"] = { fg = c.orange },
    ["@lsp.typemod.property.declaration"] = { fg = c.cyan },
    ["@lsp.typemod.class.defaultLibrary"] = { fg = c.yellow },
    ["@lsp.typemod.type.defaultLibrary"] = { fg = c.yellow },
    ["@lsp.typemod.function.declaration"] = { fg = c.sky },
    ["@lsp.typemod.function.async"] = { fg = c.sky },
    ["@lsp.typemod.method.declaration"] = { fg = c.sky },
    ["@lsp.typemod.method.async"] = { fg = c.sky },
    ["@lsp.typemod.parameter.declaration"] = { fg = c.blue, italic = italic_parameters },
    ["@lsp.typemod.parameter.readonly"] = { fg = c.orange, italic = italic_parameters },
    ["@lsp.typemod.enumMember"] = { fg = c.teal },
    ["@lsp.typemod.enumMember.readonly"] = { fg = c.teal },

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
    ["@lsp.type.parameter.python"] = { fg = c.teal, italic = true },
    ["@lsp.type.property.python"] = { fg = c.cyan },
    ["@lsp.type.decorator.python"] = { fg = c.teal },
    ["@lsp.type.variable.python"] = {},
    ["@lsp.typemod.variable.readonly.python"] = { fg = c.orange },
    ["@lsp.typemod.function.defaultLibrary.python"] = { fg = c.yellow },

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
    ["@lsp.type.lifetime.rust"] = { fg = c.fg },
    ["@lsp.type.parameter.rust"] = { fg = c.blue, italic = italic_parameters },
    ["@lsp.typemod.function.defaultLibrary.rust"] = { fg = c.sky },

    -- JSON/YAML/TOML
    ["@lsp.type.property.json"] = { fg = c.blue },
    ["@lsp.type.property.yaml"] = { fg = c.blue },
    ["@lsp.type.property.toml"] = { fg = c.blue },
  }
end

return M
