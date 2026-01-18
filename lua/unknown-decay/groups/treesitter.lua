-- unknown-decay/groups/treesitter.lua
-- Treesitter highlight captures mapped from VS Code decay.json tokenColors
-- This file contains 200+ captures for comprehensive syntax highlighting

local M = {}

function M.get(c, config)
  local italic_comments = config.is_italic("comments")
  local italic_parameters = config.is_italic("parameters")
  local italic_keywords = config.is_italic("keywords")

  return {
    -- ============================================
    -- IDENTIFIERS
    -- ============================================

    -- Variables
    ["@variable"] = { fg = c.fg_light },                     -- variable -> #dee1e6
    ["@variable.builtin"] = { fg = c.purple },               -- variable.language (self, this) -> purple
    ["@variable.parameter"] = { fg = c.blue, italic = italic_parameters }, -- variable.parameter -> #70a5eb
    ["@variable.parameter.builtin"] = { fg = c.blue, italic = italic_parameters },
    ["@variable.member"] = { fg = c.cyan },                  -- variable.other.property -> #74bee9

    -- ============================================
    -- CONSTANTS
    -- ============================================

    ["@constant"] = { fg = c.purple },                       -- constant -> #c68aee
    ["@constant.builtin"] = { fg = c.orange },               -- constant.language -> #e9a180 (true, false, nil)
    ["@constant.macro"] = { fg = c.purple },                 -- constant.other.macro

    -- ============================================
    -- MODULES / NAMESPACES
    -- ============================================

    ["@module"] = { fg = c.fg },                             -- entity.name.namespace -> #b6beca
    ["@module.builtin"] = { fg = c.yellow },
    ["@label"] = { fg = c.purple },                          -- entity.name.label

    -- ============================================
    -- STRINGS
    -- ============================================

    ["@string"] = { fg = c.green },                          -- string -> #78dba9
    ["@string.documentation"] = { fg = c.green },            -- string.documentation
    ["@string.regexp"] = { fg = c.teal },                    -- string.regexp -> #56b6c2
    ["@string.escape"] = { fg = c.teal },                    -- constant.character.escape -> #56b6c2
    ["@string.special"] = { fg = c.teal },                   -- string.special
    ["@string.special.symbol"] = { fg = c.teal },            -- constant.other.symbol -> #56b6c2
    ["@string.special.path"] = { fg = c.green },
    ["@string.special.url"] = { fg = c.link, underline = true },

    -- ============================================
    -- CHARACTERS
    -- ============================================

    ["@character"] = { fg = c.green },                       -- string.character
    ["@character.special"] = { fg = c.blue },                -- constant.character.entity -> #70a5eb

    -- ============================================
    -- NUMBERS
    -- ============================================

    ["@number"] = { fg = c.red },                            -- constant.numeric -> #e05f65
    ["@number.float"] = { fg = c.red },

    -- ============================================
    -- BOOLEANS
    -- ============================================

    ["@boolean"] = { fg = c.teal },                          -- constant.language -> #56b6c2

    -- ============================================
    -- FUNCTIONS
    -- ============================================

    ["@function"] = { fg = c.sky },                          -- entity.name.function -> #61afef
    ["@function.builtin"] = { fg = c.yellow },               -- support.function (super, etc.) -> yellow
    ["@function.call"] = { fg = c.sky },                     -- meta.function-call -> #61afef
    ["@function.macro"] = { fg = c.purple },                 -- entity.name.function.preprocessor
    ["@function.method"] = { fg = c.sky },                   -- entity.name.function.method
    ["@function.method.call"] = { fg = c.sky },

    -- ============================================
    -- METHODS (Aliases)
    -- ============================================

    ["@method"] = { fg = c.sky },                            -- entity.name.function
    ["@method.call"] = { fg = c.sky },

    -- ============================================
    -- CONSTRUCTORS
    -- ============================================

    ["@constructor"] = { fg = c.teal },                      -- __init__, __new__ etc. -> teal

    -- ============================================
    -- OPERATORS
    -- ============================================

    -- keyword.operator (general) -> #b6beca
    -- But arithmetic/comparison/assignment operators -> #56b6c2
    ["@operator"] = { fg = c.teal },                         -- keyword.operator.arithmetic/comparison -> #56b6c2

    -- ============================================
    -- KEYWORDS
    -- ============================================

    ["@keyword"] = { fg = c.purple, italic = italic_keywords }, -- keyword -> #c68aee
    ["@keyword.coroutine"] = { fg = c.purple },              -- keyword.control.flow
    ["@keyword.function"] = { fg = c.purple },               -- storage.type.function -> #c68aee
    ["@keyword.operator"] = { fg = c.teal },                 -- keyword.operator.logical -> #56b6c2
    ["@keyword.import"] = { fg = c.purple },                 -- keyword.control.import -> #c68aee
    ["@keyword.type"] = { fg = c.purple },                   -- keyword.type
    ["@keyword.modifier"] = { fg = c.purple },               -- storage.modifier
    ["@keyword.repeat"] = { fg = c.purple, italic = italic_keywords }, -- keyword.control.loop
    ["@keyword.return"] = { fg = c.purple },                 -- keyword.control.flow.return
    ["@keyword.debug"] = { fg = c.purple },                  -- keyword.other.debugger
    ["@keyword.exception"] = { fg = c.purple },              -- keyword.control.exception
    ["@keyword.conditional"] = { fg = c.purple, italic = italic_keywords }, -- keyword.control.conditional
    ["@keyword.conditional.ternary"] = { fg = c.purple },    -- keyword.operator.ternary
    ["@keyword.directive"] = { fg = c.purple },              -- keyword.directive
    ["@keyword.directive.define"] = { fg = c.purple },

    -- ============================================
    -- PUNCTUATION
    -- ============================================

    ["@punctuation.delimiter"] = { fg = c.fg },              -- punctuation.separator -> #b6beca
    ["@punctuation.bracket"] = { fg = c.cyan },              -- meta.brace -> #74bee9
    ["@punctuation.special"] = { fg = c.red },               -- punctuation.definition.template-expression -> #e05f65

    -- ============================================
    -- COMMENTS
    -- ============================================

    ["@comment"] = { fg = c.gray, italic = italic_comments }, -- comment -> #7f848e
    ["@comment.documentation"] = { fg = c.gray, italic = italic_comments },
    ["@comment.error"] = { fg = c.error, italic = italic_comments },
    ["@comment.warning"] = { fg = c.warning, italic = italic_comments },
    ["@comment.todo"] = { fg = c.orange, bold = true },
    ["@comment.note"] = { fg = c.info, italic = italic_comments },

    -- ============================================
    -- MARKUP (Markdown, etc.)
    -- ============================================

    ["@markup.strong"] = { fg = c.orange, bold = true },     -- markup.bold -> #e9a180
    ["@markup.italic"] = { fg = c.red, italic = true },      -- markup.italic -> #e05f65
    ["@markup.strikethrough"] = { strikethrough = true },
    ["@markup.underline"] = { underline = true },

    ["@markup.heading"] = { fg = c.blue, bold = true },      -- markup.heading -> #70a5eb
    ["@markup.heading.1"] = { fg = c.blue, bold = true },
    ["@markup.heading.2"] = { fg = c.blue, bold = true },
    ["@markup.heading.3"] = { fg = c.blue, bold = true },
    ["@markup.heading.4"] = { fg = c.blue, bold = true },
    ["@markup.heading.5"] = { fg = c.blue, bold = true },
    ["@markup.heading.6"] = { fg = c.blue, bold = true },

    ["@markup.quote"] = { fg = c.gray, italic = true },
    ["@markup.math"] = { fg = c.blue },

    ["@markup.link"] = { fg = c.sky },                       -- markup.underline.link
    ["@markup.link.label"] = { fg = c.blue },
    ["@markup.link.url"] = { fg = c.link, underline = true },

    ["@markup.raw"] = { fg = c.yellow },                     -- markup.inline.raw -> #f1cf8a
    ["@markup.raw.block"] = { fg = c.yellow },

    ["@markup.list"] = { fg = c.blue },                      -- punctuation.definition.list -> #70a5eb
    ["@markup.list.checked"] = { fg = c.green },
    ["@markup.list.unchecked"] = { fg = c.gray },

    -- ============================================
    -- DIFF
    -- ============================================

    ["@diff.plus"] = { fg = c.git_add },                     -- markup.inserted -> #78dba9
    ["@diff.minus"] = { fg = c.git_delete },                 -- markup.deleted -> #e05f65
    ["@diff.delta"] = { fg = c.git_change },                 -- markup.changed -> #f1cf8a

    -- ============================================
    -- TAGS (HTML, XML, JSX, etc.)
    -- ============================================

    ["@tag"] = { fg = c.red },                               -- entity.name.tag -> #e05f65
    ["@tag.builtin"] = { fg = c.red },
    ["@tag.attribute"] = { fg = c.blue },                    -- entity.other.attribute-name -> #70a5eb
    ["@tag.delimiter"] = { fg = c.fg },                      -- punctuation.definition.tag

    -- ============================================
    -- TYPES
    -- ============================================

    ["@type"] = { fg = c.yellow },                           -- entity.name.type -> #f1cf8a
    ["@type.builtin"] = { fg = c.fg },                       -- support.type.primitive -> #b6beca
    ["@type.definition"] = { fg = c.yellow },
    ["@type.qualifier"] = { fg = c.purple },                 -- storage.modifier

    -- ============================================
    -- ATTRIBUTES / DECORATORS
    -- ============================================

    ["@attribute"] = { fg = c.teal },                        -- entity.other.attribute -> #56b6c2
    ["@attribute.builtin"] = { fg = c.teal },

    -- ============================================
    -- PROPERTIES
    -- ============================================

    ["@property"] = { fg = c.cyan },                         -- variable.other.property -> #74bee9

    -- ============================================
    -- NONE (No highlighting)
    -- ============================================

    ["@none"] = {},

    -- ============================================
    -- MISCELLANEOUS
    -- ============================================

    ["@conceal"] = { fg = c.gray_dark },
    ["@spell"] = {},
    ["@nospell"] = {},

    -- ============================================
    -- LANGUAGE-SPECIFIC INJECTIONS
    -- ============================================

    -- Regex
    ["@string.regexp"] = { fg = c.teal },
    ["@punctuation.bracket.regexp"] = { fg = c.teal },
    ["@operator.regexp"] = { fg = c.red },
    ["@character.special.regexp"] = { fg = c.blue },

    -- ============================================
    -- LEGACY TREESITTER GROUPS (backwards compat)
    -- ============================================

    -- These are older naming conventions that some parsers still use
    TSVariable = { link = "@variable" },
    TSVariableBuiltin = { link = "@variable.builtin" },
    TSParameter = { link = "@variable.parameter" },
    TSField = { link = "@variable.member" },
    TSConstant = { link = "@constant" },
    TSConstBuiltin = { link = "@constant.builtin" },
    TSString = { link = "@string" },
    TSStringRegex = { link = "@string.regexp" },
    TSStringEscape = { link = "@string.escape" },
    TSCharacter = { link = "@character" },
    TSNumber = { link = "@number" },
    TSBoolean = { link = "@boolean" },
    TSFunction = { link = "@function" },
    TSFuncBuiltin = { link = "@function.builtin" },
    TSMethod = { link = "@function.method" },
    TSConstructor = { link = "@constructor" },
    TSKeyword = { link = "@keyword" },
    TSKeywordFunction = { link = "@keyword.function" },
    TSKeywordOperator = { link = "@keyword.operator" },
    TSKeywordReturn = { link = "@keyword.return" },
    TSConditional = { link = "@keyword.conditional" },
    TSRepeat = { link = "@keyword.repeat" },
    TSException = { link = "@keyword.exception" },
    TSInclude = { link = "@keyword.import" },
    TSOperator = { link = "@operator" },
    TSPunctDelimiter = { link = "@punctuation.delimiter" },
    TSPunctBracket = { link = "@punctuation.bracket" },
    TSPunctSpecial = { link = "@punctuation.special" },
    TSComment = { link = "@comment" },
    TSTag = { link = "@tag" },
    TSTagAttribute = { link = "@tag.attribute" },
    TSTagDelimiter = { link = "@tag.delimiter" },
    TSType = { link = "@type" },
    TSTypeBuiltin = { link = "@type.builtin" },
    TSProperty = { link = "@property" },
    TSLabel = { link = "@label" },
    TSNamespace = { link = "@module" },
    TSText = { link = "@markup" },
    TSStrong = { link = "@markup.strong" },
    TSEmphasis = { link = "@markup.italic" },
    TSUnderline = { link = "@markup.underline" },
    TSStrike = { link = "@markup.strikethrough" },
    TSTitle = { link = "@markup.heading" },
    TSLiteral = { link = "@markup.raw" },
    TSURI = { link = "@markup.link.url" },
    TSTextReference = { link = "@markup.link" },
    TSDanger = { link = "@comment.error" },
    TSWarning = { link = "@comment.warning" },
    TSNote = { link = "@comment.note" },
    TSTodo = { link = "@comment.todo" },
  }
end

return M