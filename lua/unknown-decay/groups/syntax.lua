local M = {}

function M.get(c, config)
  local italic_comments = config.is_italic("comments")
  local italic_keywords = config.is_italic("keywords")

  return {
    -- Comments
    Comment = { fg = c.gray, italic = italic_comments },

    -- Constants
    Constant = { fg = c.purple },
    String = { fg = c.green },
    Character = { fg = c.green },
    Number = { fg = c.red },
    Float = { fg = c.red },
    Boolean = { fg = c.teal },

    -- Identifiers
    Identifier = { fg = c.fg_light },
    Function = { fg = c.sky },

    -- Statements
    Statement = { fg = c.purple },
    Conditional = { fg = c.purple, italic = italic_keywords },
    Repeat = { fg = c.purple, italic = italic_keywords },
    Label = { fg = c.purple },
    Operator = { fg = c.fg },
    Keyword = { fg = c.purple },
    Exception = { fg = c.purple },

    -- Preprocessor
    PreProc = { fg = c.purple },
    Include = { fg = c.purple },
    Define = { fg = c.purple },
    Macro = { fg = c.purple },
    PreCondit = { fg = c.purple },

    -- Types
    Type = { fg = c.yellow },
    StorageClass = { fg = c.purple },
    Structure = { fg = c.yellow },
    Typedef = { fg = c.yellow },

    -- Special
    Special = { fg = c.teal },
    SpecialChar = { fg = c.teal },
    Tag = { fg = c.red },
    Delimiter = { fg = c.fg },
    SpecialComment = { fg = c.gray, italic = italic_comments },
    Debug = { fg = c.orange },

    -- Underlined
    Underlined = { fg = c.link, underline = true },

    -- Ignore
    Ignore = { fg = c.gray_dark },

    -- Error
    Error = { fg = c.error },

    -- Todo
    Todo = { fg = c.orange, bold = true },

    -- Additional
    Bold = { bold = true },
    Italic = { italic = true },
    Added = { fg = c.git_add },
    Changed = { fg = c.git_change },
    Removed = { fg = c.git_delete },

    -- C/C++
    cInclude = { fg = c.purple },
    cDefine = { fg = c.purple },
    cPreCondit = { fg = c.purple },
    cType = { fg = c.yellow },
    cStorageClass = { fg = c.purple },
    cStructure = { fg = c.yellow },
    cOperator = { fg = c.fg },
    cStatement = { fg = c.purple },

    -- Lua
    luaFunc = { fg = c.sky },
    luaFunction = { fg = c.purple },
    luaTable = { fg = c.yellow },
    luaIn = { fg = c.purple },

    -- Vim
    vimCommand = { fg = c.purple },
    vimLet = { fg = c.purple },
    vimFuncName = { fg = c.sky },
    vimFunction = { fg = c.sky },
    vimHighlight = { fg = c.purple },
    vimOption = { fg = c.blue },
    vimVar = { fg = c.fg_light },
    vimIsCommand = { fg = c.purple },
    vimNotFunc = { fg = c.purple },
    vimSetSep = { fg = c.fg },
    vimSep = { fg = c.fg },
    vimParenSep = { fg = c.fg },
    vimBracket = { fg = c.cyan },
    vimString = { fg = c.green },
    vimUserFunc = { fg = c.sky },

    -- Shell/Bash
    shDerefSimple = { fg = c.blue },
    shVariable = { fg = c.blue },
    shQuote = { fg = c.green },
    shFunction = { fg = c.sky },
    shSetList = { fg = c.fg_light },
    shStatement = { fg = c.purple },
    shLoop = { fg = c.purple },
    shConditional = { fg = c.purple },

    -- Git
    gitcommitSummary = { fg = c.fg },
    gitcommitComment = { fg = c.gray, italic = italic_comments },
    gitcommitUnmerged = { fg = c.red },
    gitcommitOnBranch = { fg = c.fg },
    gitcommitBranch = { fg = c.purple },
    gitcommitDiscardedType = { fg = c.red },
    gitcommitSelectedType = { fg = c.green },
    gitcommitHeader = { fg = c.fg },
    gitcommitUntrackedFile = { fg = c.aqua },
    gitcommitDiscardedFile = { fg = c.red },
    gitcommitSelectedFile = { fg = c.green },
    gitcommitUnmergedFile = { fg = c.yellow },
    gitcommitFile = { fg = c.fg },

    -- Diff
    diffAdded = { fg = c.git_add },
    diffRemoved = { fg = c.git_delete },
    diffChanged = { fg = c.git_change },
    diffOldFile = { fg = c.yellow },
    diffNewFile = { fg = c.orange },
    diffFile = { fg = c.blue },
    diffLine = { fg = c.gray },
    diffIndexLine = { fg = c.purple },
  }
end

return M
