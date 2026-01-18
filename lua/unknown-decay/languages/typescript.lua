-- unknown-decay/languages/typescript.lua
-- TypeScript/JavaScript/TSX/JSX specific highlight overrides
-- Mapped EXACTLY from VS Code decay.json tokenColors

local M = {}

function M.get(c, config)
  local italic_parameters = config.is_italic("parameters")

  return {
    -- ============================================
    -- VARIABLES
    -- ============================================

    -- Default variables -> pure white
    ["@variable.typescript"] = { fg = c.fg },
    ["@variable.typescriptreact"] = { fg = c.fg },
    ["@variable.javascript"] = { fg = c.fg },
    ["@variable.javascriptreact"] = { fg = c.fg },

    -- variable.other.constant -> #b6beca (NOT orange)
    ["@variable.member.typescript"] = { fg = c.cyan },
    ["@variable.member.typescriptreact"] = { fg = c.cyan },
    ["@variable.member.javascript"] = { fg = c.cyan },
    ["@variable.member.javascriptreact"] = { fg = c.cyan },

    -- variable.language (this) -> #f1cf8a (yellow)
    ["@variable.builtin.typescript"] = { fg = c.yellow },
    ["@variable.builtin.typescriptreact"] = { fg = c.yellow },
    ["@variable.builtin.javascript"] = { fg = c.yellow },
    ["@variable.builtin.javascriptreact"] = { fg = c.yellow },

    -- variable.parameter.function.js -> teal (user preference)
    ["@variable.parameter.typescript"] = { fg = c.teal, italic = italic_parameters },
    ["@variable.parameter.typescriptreact"] = { fg = c.teal, italic = italic_parameters },
    ["@variable.parameter.javascript"] = { fg = c.teal, italic = italic_parameters },
    ["@variable.parameter.javascriptreact"] = { fg = c.teal, italic = italic_parameters },

    -- ============================================
    -- OBJECT PROPERTIES
    -- ============================================

    -- Object properties/keys -> pale white
    ["@property.typescript"] = { fg = c.fg_light },
    ["@property.typescriptreact"] = { fg = c.fg_light },
    ["@property.javascript"] = { fg = c.fg_light },
    ["@property.javascriptreact"] = { fg = c.fg_light },

    -- ============================================
    -- TYPES & CLASSES
    -- ============================================

    -- entity.name.type, entity.name.class -> #f1cf8a
    ["@type.typescript"] = { fg = c.yellow },
    ["@type.typescriptreact"] = { fg = c.yellow },
    ["@type.javascript"] = { fg = c.yellow },
    ["@type.javascriptreact"] = { fg = c.yellow },

    -- support.type.primitive.ts -> #b6beca
    ["@type.builtin.typescript"] = { fg = c.fg },
    ["@type.builtin.typescriptreact"] = { fg = c.fg },
    ["@type.builtin.javascript"] = { fg = c.fg },
    ["@type.builtin.javascriptreact"] = { fg = c.fg },

    -- Constructor (new keyword targets) -> #f1cf8a
    ["@constructor.typescript"] = { fg = c.yellow },
    ["@constructor.typescriptreact"] = { fg = c.yellow },
    ["@constructor.javascript"] = { fg = c.yellow },
    ["@constructor.javascriptreact"] = { fg = c.yellow },

    -- ============================================
    -- FUNCTIONS
    -- ============================================

    -- entity.name.function -> #61afef
    ["@function.typescript"] = { fg = c.sky },
    ["@function.typescriptreact"] = { fg = c.sky },
    ["@function.javascript"] = { fg = c.sky },
    ["@function.javascriptreact"] = { fg = c.sky },

    ["@function.call.typescript"] = { fg = c.sky },
    ["@function.call.typescriptreact"] = { fg = c.sky },
    ["@function.call.javascript"] = { fg = c.sky },
    ["@function.call.javascriptreact"] = { fg = c.sky },

    ["@function.method.typescript"] = { fg = c.sky },
    ["@function.method.typescriptreact"] = { fg = c.sky },
    ["@function.method.javascript"] = { fg = c.sky },
    ["@function.method.javascriptreact"] = { fg = c.sky },

    ["@function.method.call.typescript"] = { fg = c.sky },
    ["@function.method.call.typescriptreact"] = { fg = c.sky },
    ["@function.method.call.javascript"] = { fg = c.sky },
    ["@function.method.call.javascriptreact"] = { fg = c.sky },

    -- support.function -> #56b6c2
    ["@function.builtin.typescript"] = { fg = c.teal },
    ["@function.builtin.typescriptreact"] = { fg = c.teal },
    ["@function.builtin.javascript"] = { fg = c.teal },
    ["@function.builtin.javascriptreact"] = { fg = c.teal },

    -- ============================================
    -- KEYWORDS
    -- ============================================

    -- keyword -> #c68aee
    ["@keyword.typescript"] = { fg = c.purple },
    ["@keyword.typescriptreact"] = { fg = c.purple },
    ["@keyword.javascript"] = { fg = c.purple },
    ["@keyword.javascriptreact"] = { fg = c.purple },

    -- keyword.operator.expression.import -> #c68aee
    ["@keyword.import.typescript"] = { fg = c.purple },
    ["@keyword.import.typescriptreact"] = { fg = c.purple },
    ["@keyword.import.javascript"] = { fg = c.purple },
    ["@keyword.import.javascriptreact"] = { fg = c.purple },

    -- storage.type.function -> #c68aee
    ["@keyword.function.typescript"] = { fg = c.purple },
    ["@keyword.function.typescriptreact"] = { fg = c.purple },
    ["@keyword.function.javascript"] = { fg = c.purple },
    ["@keyword.function.javascriptreact"] = { fg = c.purple },

    -- keyword.operator.ternary -> #c68aee
    ["@keyword.conditional.ternary.typescript"] = { fg = c.purple },
    ["@keyword.conditional.ternary.typescriptreact"] = { fg = c.purple },
    ["@keyword.conditional.ternary.javascript"] = { fg = c.purple },
    ["@keyword.conditional.ternary.javascriptreact"] = { fg = c.purple },

    -- keyword.operator.expression.* (new, typeof, instanceof, delete, void, in, of) -> #c68aee
    ["@keyword.operator.typescript"] = { fg = c.purple },
    ["@keyword.operator.typescriptreact"] = { fg = c.purple },
    ["@keyword.operator.javascript"] = { fg = c.purple },
    ["@keyword.operator.javascriptreact"] = { fg = c.purple },

    -- interface, type keywords
    ["@keyword.type.typescript"] = { fg = c.purple },
    ["@keyword.type.typescriptreact"] = { fg = c.purple },

    -- ============================================
    -- OPERATORS
    -- ============================================

    ["@operator.typescript"] = { fg = c.teal },
    ["@operator.typescriptreact"] = { fg = c.teal },
    ["@operator.javascript"] = { fg = c.teal },
    ["@operator.javascriptreact"] = { fg = c.teal },

    -- ============================================
    -- PUNCTUATION
    -- ============================================

    -- meta.brace.round -> #74bee9 (parentheses)
    ["@punctuation.bracket.typescript"] = { fg = c.cyan },
    ["@punctuation.bracket.typescriptreact"] = { fg = c.cyan },
    ["@punctuation.bracket.javascript"] = { fg = c.cyan },
    ["@punctuation.bracket.javascriptreact"] = { fg = c.cyan },

    -- punctuation.separator.key-value, punctuation.separator.delimiter -> #b6beca
    ["@punctuation.delimiter.typescript"] = { fg = c.fg },
    ["@punctuation.delimiter.typescriptreact"] = { fg = c.fg },
    ["@punctuation.delimiter.javascript"] = { fg = c.fg },
    ["@punctuation.delimiter.javascriptreact"] = { fg = c.fg },

    -- punctuation.definition.template-expression.begin/end -> #e05f65
    ["@punctuation.special.typescript"] = { fg = c.red },
    ["@punctuation.special.typescriptreact"] = { fg = c.red },
    ["@punctuation.special.javascript"] = { fg = c.red },
    ["@punctuation.special.javascriptreact"] = { fg = c.red },

    -- ============================================
    -- STRINGS
    -- ============================================

    ["@string.typescript"] = { fg = c.green },
    ["@string.typescriptreact"] = { fg = c.green },
    ["@string.javascript"] = { fg = c.green },
    ["@string.javascriptreact"] = { fg = c.green },

    -- constant.character.escape -> #56b6c2
    ["@string.escape.typescript"] = { fg = c.teal },
    ["@string.escape.typescriptreact"] = { fg = c.teal },
    ["@string.escape.javascript"] = { fg = c.teal },
    ["@string.escape.javascriptreact"] = { fg = c.teal },

    -- ============================================
    -- NUMBERS & CONSTANTS
    -- ============================================

    -- constant.numeric -> #e05f65
    ["@number.typescript"] = { fg = c.red },
    ["@number.typescriptreact"] = { fg = c.red },
    ["@number.javascript"] = { fg = c.red },
    ["@number.javascriptreact"] = { fg = c.red },

    -- constant -> #c68aee
    ["@constant.typescript"] = { fg = c.purple },
    ["@constant.typescriptreact"] = { fg = c.purple },
    ["@constant.javascript"] = { fg = c.purple },
    ["@constant.javascriptreact"] = { fg = c.purple },

    -- constant.language (true, false) -> purple
    ["@boolean.typescript"] = { fg = c.purple },
    ["@boolean.typescriptreact"] = { fg = c.purple },
    ["@boolean.javascript"] = { fg = c.purple },
    ["@boolean.javascriptreact"] = { fg = c.purple },

    -- null, undefined -> purple
    ["@constant.builtin.typescript"] = { fg = c.purple },
    ["@constant.builtin.typescriptreact"] = { fg = c.purple },
    ["@constant.builtin.javascript"] = { fg = c.purple },
    ["@constant.builtin.javascriptreact"] = { fg = c.purple },

    -- ============================================
    -- JSX/TSX SPECIFIC
    -- ============================================

    -- JSX/TSX tags -> yellow
    ["@tag.tsx"] = { fg = c.yellow },
    ["@tag.jsx"] = { fg = c.yellow },
    ["@tag.javascript"] = { fg = c.yellow },
    ["@tag.typescript"] = { fg = c.yellow },
    ["@tag.typescriptreact"] = { fg = c.yellow },
    ["@tag.javascriptreact"] = { fg = c.yellow },

    ["@tag.builtin.tsx"] = { fg = c.yellow },
    ["@tag.builtin.jsx"] = { fg = c.yellow },
    ["@tag.builtin.typescriptreact"] = { fg = c.yellow },
    ["@tag.builtin.javascriptreact"] = { fg = c.yellow },

    -- entity.other.attribute-name.js/ts/jsx/tsx -> #56b6c2 (italic)
    ["@tag.attribute.typescript"] = { fg = c.teal, italic = true },
    ["@tag.attribute.typescriptreact"] = { fg = c.teal, italic = true },
    ["@tag.attribute.javascript"] = { fg = c.teal, italic = true },
    ["@tag.attribute.javascriptreact"] = { fg = c.teal, italic = true },
    ["@tag.attribute.tsx"] = { fg = c.teal, italic = true },
    ["@tag.attribute.jsx"] = { fg = c.teal, italic = true },

    -- Tag delimiters (<, >, </, />)
    ["@tag.delimiter.tsx"] = { fg = c.fg },
    ["@tag.delimiter.jsx"] = { fg = c.fg },
    ["@tag.delimiter.typescriptreact"] = { fg = c.fg },
    ["@tag.delimiter.javascriptreact"] = { fg = c.fg },

    -- ============================================
    -- DECORATORS
    -- ============================================

    ["@attribute.typescript"] = { fg = c.teal },
    ["@attribute.typescriptreact"] = { fg = c.teal },

    -- ============================================
    -- REGEX
    -- ============================================

    ["@string.regexp.typescript"] = { fg = c.teal },
    ["@string.regexp.typescriptreact"] = { fg = c.teal },
    ["@string.regexp.javascript"] = { fg = c.teal },
    ["@string.regexp.javascriptreact"] = { fg = c.teal },

    -- ============================================
    -- LSP SEMANTIC TOKENS
    -- ============================================

    -- Parameters -> teal
    ["@lsp.type.parameter.typescript"] = { fg = c.teal, italic = italic_parameters },
    ["@lsp.type.parameter.typescriptreact"] = { fg = c.teal, italic = italic_parameters },
    ["@lsp.type.parameter.javascript"] = { fg = c.teal, italic = italic_parameters },
    ["@lsp.type.parameter.javascriptreact"] = { fg = c.teal, italic = italic_parameters },
    ["@lsp.mod.declaration.typescript"] = {},
    ["@lsp.typemod.parameter.declaration.typescript"] = { fg = c.teal, italic = italic_parameters },
    ["@lsp.typemod.parameter.declaration.typescriptreact"] = { fg = c.teal, italic = italic_parameters },
    ["@lsp.typemod.parameter.declaration.javascript"] = { fg = c.teal, italic = italic_parameters },
    ["@lsp.typemod.parameter.declaration.javascriptreact"] = { fg = c.teal, italic = italic_parameters },

    -- Function calls/methods (.map, .isArray, etc.) -> blue
    ["@lsp.type.member.typescript"] = { fg = c.blue },
    ["@lsp.type.member.typescriptreact"] = { fg = c.blue },
    ["@lsp.type.member.javascript"] = { fg = c.blue },
    ["@lsp.type.member.javascriptreact"] = { fg = c.blue },
    ["@lsp.mod.defaultLibrary.typescript"] = {},
    ["@lsp.typemod.member.defaultLibrary.typescript"] = { fg = c.blue },
    ["@lsp.typemod.member.defaultLibrary.typescriptreact"] = { fg = c.blue },
    ["@lsp.typemod.member.defaultLibrary.javascript"] = { fg = c.blue },
    ["@lsp.typemod.member.defaultLibrary.javascriptreact"] = { fg = c.blue },

    -- Function calls foo() -> blue
    ["@lsp.type.function.typescript"] = { fg = c.blue },
    ["@lsp.type.function.typescriptreact"] = { fg = c.blue },
    ["@lsp.type.function.javascript"] = { fg = c.blue },
    ["@lsp.type.function.javascriptreact"] = { fg = c.blue },
    ["@lsp.mod.readonly.typescript"] = {},
    ["@lsp.typemod.function.readonly.typescript"] = { fg = c.blue },
    ["@lsp.typemod.function.readonly.typescriptreact"] = { fg = c.blue },
    ["@lsp.typemod.function.readonly.javascript"] = { fg = c.blue },
    ["@lsp.typemod.function.readonly.javascriptreact"] = { fg = c.blue },

    -- Variables -> pure white (fg)
    ["@lsp.type.variable.typescript"] = { fg = c.fg },
    ["@lsp.type.variable.typescriptreact"] = { fg = c.fg },
    ["@lsp.type.variable.javascript"] = { fg = c.fg },
    ["@lsp.type.variable.javascriptreact"] = { fg = c.fg },
    ["@lsp.typemod.variable.readonly.typescript"] = { fg = c.fg },
    ["@lsp.typemod.variable.readonly.typescriptreact"] = { fg = c.fg },
    ["@lsp.typemod.variable.readonly.javascript"] = { fg = c.fg },
    ["@lsp.typemod.variable.readonly.javascriptreact"] = { fg = c.fg },
    ["@lsp.typemod.variable.declaration.typescript"] = { fg = c.fg },
    ["@lsp.typemod.variable.declaration.typescriptreact"] = { fg = c.fg },
    ["@lsp.typemod.variable.declaration.javascript"] = { fg = c.fg },
    ["@lsp.typemod.variable.declaration.javascriptreact"] = { fg = c.fg },
    ["@lsp.typemod.variable.local.typescript"] = { fg = c.fg },
    ["@lsp.typemod.variable.local.typescriptreact"] = { fg = c.fg },
    ["@lsp.typemod.variable.local.javascript"] = { fg = c.fg },
    ["@lsp.typemod.variable.local.javascriptreact"] = { fg = c.fg },

    -- Properties/nested object keys (user.name.first) -> pale white (fg_light)
    ["@lsp.type.property.typescript"] = { fg = c.fg_light },
    ["@lsp.type.property.typescriptreact"] = { fg = c.fg_light },
    ["@lsp.type.property.javascript"] = { fg = c.fg_light },
    ["@lsp.type.property.javascriptreact"] = { fg = c.fg_light },
    ["@lsp.mod.declaration.typescriptreact"] = {},
    ["@lsp.typemod.property.declaration.typescript"] = { fg = c.fg_light },
    ["@lsp.typemod.property.declaration.typescriptreact"] = { fg = c.fg_light },
    ["@lsp.typemod.property.declaration.javascript"] = { fg = c.fg_light },
    ["@lsp.typemod.property.declaration.javascriptreact"] = { fg = c.fg_light },
    ["@lsp.typemod.property.defaultLibrary.typescript"] = { fg = c.fg_light },
    ["@lsp.typemod.property.defaultLibrary.typescriptreact"] = { fg = c.fg_light },
    ["@lsp.typemod.property.defaultLibrary.javascript"] = { fg = c.fg_light },
    ["@lsp.typemod.property.defaultLibrary.javascriptreact"] = { fg = c.fg_light },
    ["@lsp.typemod.property.readonly.typescript"] = { fg = c.fg_light },
    ["@lsp.typemod.property.readonly.typescriptreact"] = { fg = c.fg_light },
    ["@lsp.typemod.property.readonly.javascript"] = { fg = c.fg_light },
    ["@lsp.typemod.property.readonly.javascriptreact"] = { fg = c.fg_light },

    -- Type usage -> yellow
    ["@lsp.type.type.typescript"] = { fg = c.yellow },
    ["@lsp.type.type.typescriptreact"] = { fg = c.yellow },
    ["@lsp.type.typeParameter.typescript"] = { fg = c.yellow },
    ["@lsp.type.typeParameter.typescriptreact"] = { fg = c.yellow },

    -- ============================================
    -- VIM SYNTAX GROUPS (for non-treesitter fallback)
    -- ============================================

    typescriptVariable = { fg = c.purple },
    typescriptStorageClass = { fg = c.purple },
    typescriptNull = { fg = c.purple },
    typescriptOperator = { fg = c.purple },
    typescriptExceptions = { fg = c.purple },
    typescriptBoolean = { fg = c.purple },
    typescriptObjectType = {},
    typescriptComputedMember = { fg = c.purple },
    typescriptTypeAnnotation = { fg = c.purple },
    typescriptOptionalMark = { fg = c.purple },
    typescriptMemberOptionality = { fg = c.purple },
    typescriptObjectColon = { fg = c.purple },
    typescriptTypeQuery = { fg = c.purple },
    typescriptConditionalType = { fg = c.purple },
    typescriptConditionalParen = { fg = c.purple },
    typescriptMappedIn = { fg = c.purple },
    typescriptCastKeyword = { fg = c.purple },
    typescriptKeywordOp = { fg = c.purple },
    typescriptTemplate = { fg = c.green },
    typescriptTemplateSubstitution = { fg = c.red },
    typescriptTemplateSB = { fg = c.red },
    typescriptBlock = {},
    typescriptComma = { fg = c.fg },
    typescriptFuncCallArg = {},
    typescriptArrowFuncDef = {},
    typescriptCall = {},
    typescriptProp = { fg = c.fg_light },
    typescriptDOMNodeProp = { fg = c.fg_light },
    typescriptBOMLocationMethod = { fg = c.blue },
    typescriptIndexExpr = { fg = c.blue },
    typescriptIdentifierName = { fg = c.fg },
    typescriptDestructureVariable = { fg = c.fg },
    typescriptArrayDestructure = {},
    typescriptImportType = { fg = c.purple },
    typescriptMember = { fg = c.fg_light },
    typescriptPropertySignature = { fg = c.fg_light },
    typescriptMethodSignature = { fg = c.fg_light },
    typescriptObjectLabel = { fg = c.fg_light },
    tsxTag = {},
    tsxIntrinsicTagName = { fg = c.yellow },
    tsxTagName = { fg = c.yellow },
    tsxCloseTag = {},
    tsxCloseTagName = { fg = c.yellow },
    tsxRegion = {},
    tsxPunct = { fg = c.fg },
    tsxOpenPunct = { fg = c.fg },
    tsxClosePunct = { fg = c.fg },
    tsxCloseString = { fg = c.fg },
    tsxOpenTag = { fg = c.fg },
    tsxAttrib = { fg = c.teal, italic = true },
    tsxEscJs = {},
    tsxEscapeJs = {},
    typescriptParenExp = {},
    typescriptObjectLiteral = {},
    typescriptPaymentShippingOptionProp = { fg = c.fg },
    typescriptImport = { fg = c.purple },
    typescriptExport = { fg = c.purple },
    typescriptModule = { fg = c.purple },
    typescriptAmbientDeclaration = { fg = c.purple },
    typescriptTypeReference = { fg = c.yellow },
    typescriptPredefinedType = { fg = c.fg },
    typescriptInterfaceName = { fg = c.yellow },
    typescriptClassName = { fg = c.yellow },
    typescriptFuncName = { fg = c.sky },
    typescriptArrowFunc = { fg = c.purple },
    typescriptBraces = { fg = c.cyan },
    typescriptParens = { fg = c.cyan },
    typescriptEndColons = { fg = c.fg },
    typescriptDotNotation = { fg = c.fg },
    typescriptGlobalObjects = { fg = c.yellow },
    typescriptAssign = { fg = c.teal },
    typescriptBinaryOp = { fg = c.teal },
    typescriptUnaryOp = { fg = c.teal },
    typescriptTernaryOp = { fg = c.purple },
    javascriptVariable = { fg = c.purple },
    javascriptStorageClass = { fg = c.purple },
    javascriptImport = { fg = c.purple },
    javascriptExport = { fg = c.purple },
    javascriptFuncName = { fg = c.sky },
    javascriptBraces = { fg = c.cyan },
    javascriptParens = { fg = c.cyan },
    javascriptArrowFunc = { fg = c.purple },
    javascriptNull = { fg = c.purple },
    javascriptOperator = { fg = c.purple },
    javascriptExceptions = { fg = c.purple },
    javascriptBoolean = { fg = c.purple },
    javascriptTemplate = { fg = c.green },
    javascriptTemplateSubstitution = { fg = c.red },
    javascriptTemplateSB = { fg = c.red },
    javascriptFuncCallArg = {},
    javascriptCall = {},
    javascriptComma = { fg = c.fg },
    javascriptProp = { fg = c.fg_light },
    javascriptIdentifierName = { fg = c.fg },
    javascriptMember = { fg = c.fg_light },
    javascriptObjectLabel = { fg = c.fg_light },
    jsxTag = {},
    jsxTagName = { fg = c.yellow },
    jsxCloseTag = {},
    jsxCloseString = { fg = c.fg },
    jsxAttrib = { fg = c.teal, italic = true },
    jsxEqual = { fg = c.teal },
    jsxRegion = {},
    jsxPunct = { fg = c.fg },
    jsxOpenPunct = { fg = c.fg },
    jsxClosePunct = { fg = c.fg },
    jsxOpenTag = { fg = c.fg },
  }
end

return M