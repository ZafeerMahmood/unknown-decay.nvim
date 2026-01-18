local M = {}

function M.get(c, config)
  local italic_comments = config.is_italic("comments")
  local italic_parameters = config.is_italic("parameters")
  local italic_keywords = config.is_italic("keywords")

  return {
    -- Variables
    ["@variable"] = { fg = c.fg_light },
    ["@variable.builtin"] = { fg = c.purple },
    ["@variable.parameter"] = { fg = c.blue, italic = italic_parameters },
    ["@variable.parameter.builtin"] = { fg = c.blue, italic = italic_parameters },
    ["@variable.member"] = { fg = c.cyan },

    -- Constants
    ["@constant"] = { fg = c.purple },
    ["@constant.builtin"] = { fg = c.orange },
    ["@constant.macro"] = { fg = c.purple },

    -- Modules
    ["@module"] = { fg = c.fg },
    ["@module.builtin"] = { fg = c.yellow },
    ["@label"] = { fg = c.purple },

    -- Strings
    ["@string"] = { fg = c.green },
    ["@string.documentation"] = { fg = c.green },
    ["@string.regexp"] = { fg = c.teal },
    ["@string.escape"] = { fg = c.teal },
    ["@string.special"] = { fg = c.teal },
    ["@string.special.symbol"] = { fg = c.teal },
    ["@string.special.path"] = { fg = c.green },
    ["@string.special.url"] = { fg = c.link, underline = true },

    -- Characters
    ["@character"] = { fg = c.green },
    ["@character.special"] = { fg = c.blue },

    -- Numbers
    ["@number"] = { fg = c.red },
    ["@number.float"] = { fg = c.red },

    -- Booleans
    ["@boolean"] = { fg = c.teal },

    -- Functions
    ["@function"] = { fg = c.sky },
    ["@function.builtin"] = { fg = c.yellow },
    ["@function.call"] = { fg = c.sky },
    ["@function.macro"] = { fg = c.purple },
    ["@function.method"] = { fg = c.sky },
    ["@function.method.call"] = { fg = c.sky },

    -- Methods (aliases)
    ["@method"] = { fg = c.sky },
    ["@method.call"] = { fg = c.sky },

    -- Constructors
    ["@constructor"] = { fg = c.teal },

    -- Operators
    ["@operator"] = { fg = c.teal },

    -- Keywords
    ["@keyword"] = { fg = c.purple, italic = italic_keywords },
    ["@keyword.coroutine"] = { fg = c.purple },
    ["@keyword.function"] = { fg = c.purple },
    ["@keyword.operator"] = { fg = c.teal },
    ["@keyword.import"] = { fg = c.purple },
    ["@keyword.type"] = { fg = c.purple },
    ["@keyword.modifier"] = { fg = c.purple },
    ["@keyword.repeat"] = { fg = c.purple, italic = italic_keywords },
    ["@keyword.return"] = { fg = c.purple },
    ["@keyword.debug"] = { fg = c.purple },
    ["@keyword.exception"] = { fg = c.purple },
    ["@keyword.conditional"] = { fg = c.purple, italic = italic_keywords },
    ["@keyword.conditional.ternary"] = { fg = c.purple },
    ["@keyword.directive"] = { fg = c.purple },
    ["@keyword.directive.define"] = { fg = c.purple },

    -- Punctuation
    ["@punctuation.delimiter"] = { fg = c.fg },
    ["@punctuation.bracket"] = { fg = c.cyan },
    ["@punctuation.special"] = { fg = c.red },

    -- Comments
    ["@comment"] = { fg = c.gray, italic = italic_comments },
    ["@comment.documentation"] = { fg = c.gray, italic = italic_comments },
    ["@comment.error"] = { fg = c.error, italic = italic_comments },
    ["@comment.warning"] = { fg = c.warning, italic = italic_comments },
    ["@comment.todo"] = { fg = c.orange, bold = true },
    ["@comment.note"] = { fg = c.info, italic = italic_comments },

    -- Markup
    ["@markup.strong"] = { fg = c.orange, bold = true },
    ["@markup.italic"] = { fg = c.red, italic = true },
    ["@markup.strikethrough"] = { strikethrough = true },
    ["@markup.underline"] = { underline = true },
    ["@markup.heading"] = { fg = c.blue, bold = true },
    ["@markup.heading.1"] = { fg = c.blue, bold = true },
    ["@markup.heading.2"] = { fg = c.blue, bold = true },
    ["@markup.heading.3"] = { fg = c.blue, bold = true },
    ["@markup.heading.4"] = { fg = c.blue, bold = true },
    ["@markup.heading.5"] = { fg = c.blue, bold = true },
    ["@markup.heading.6"] = { fg = c.blue, bold = true },
    ["@markup.quote"] = { fg = c.gray, italic = true },
    ["@markup.math"] = { fg = c.blue },
    ["@markup.link"] = { fg = c.sky },
    ["@markup.link.label"] = { fg = c.blue },
    ["@markup.link.url"] = { fg = c.link, underline = true },
    ["@markup.raw"] = { fg = c.yellow },
    ["@markup.raw.block"] = { fg = c.yellow },
    ["@markup.list"] = { fg = c.blue },
    ["@markup.list.checked"] = { fg = c.green },
    ["@markup.list.unchecked"] = { fg = c.gray },

    -- Diff
    ["@diff.plus"] = { fg = c.git_add },
    ["@diff.minus"] = { fg = c.git_delete },
    ["@diff.delta"] = { fg = c.git_change },

    -- Tags
    ["@tag"] = { fg = c.red },
    ["@tag.builtin"] = { fg = c.red },
    ["@tag.attribute"] = { fg = c.blue },
    ["@tag.delimiter"] = { fg = c.fg },

    -- Types
    ["@type"] = { fg = c.yellow },
    ["@type.builtin"] = { fg = c.fg },
    ["@type.definition"] = { fg = c.yellow },
    ["@type.qualifier"] = { fg = c.purple },

    -- Attributes
    ["@attribute"] = { fg = c.teal },
    ["@attribute.builtin"] = { fg = c.teal },

    -- Properties
    ["@property"] = { fg = c.cyan },

    -- None
    ["@none"] = {},

    -- Misc
    ["@conceal"] = { fg = c.gray_dark },
    ["@spell"] = {},
    ["@nospell"] = {},

    -- Regex
    ["@punctuation.bracket.regexp"] = { fg = c.teal },
    ["@operator.regexp"] = { fg = c.red },
    ["@character.special.regexp"] = { fg = c.blue },

    -- Legacy treesitter groups
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
