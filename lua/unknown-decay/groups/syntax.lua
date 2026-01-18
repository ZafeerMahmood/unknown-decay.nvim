-- unknown-decay/groups/syntax.lua
-- Standard Vim syntax highlight groups mapped from VS Code decay.json tokenColors

local M = {}

function M.get(c, config)
  local italic_comments = config.is_italic("comments")
  local italic_keywords = config.is_italic("keywords")

  return {
    -- ============================================
    -- Comments
    -- ============================================
    Comment = { fg = c.gray, italic = italic_comments }, -- #7f848e (italic by default)

    -- ============================================
    -- Constants
    -- ============================================
    Constant = { fg = c.purple },           -- constant scope -> #c68aee
    String = { fg = c.green },              -- string scope -> #78dba9
    Character = { fg = c.green },           -- character constants
    Number = { fg = c.red },                -- constant.numeric -> #e05f65
    Float = { fg = c.red },                 -- floating point numbers
    Boolean = { fg = c.teal },              -- true, false -> #56b6c2

    -- ============================================
    -- Identifiers
    -- ============================================
    Identifier = { fg = c.fg_light },       -- variable scope -> #dee1e6
    Function = { fg = c.sky },              -- entity.name.function -> #61afef

    -- ============================================
    -- Statements
    -- ============================================
    Statement = { fg = c.purple },          -- keyword.control -> #c68aee
    Conditional = { fg = c.purple, italic = italic_keywords }, -- if, then, else
    Repeat = { fg = c.purple, italic = italic_keywords },      -- for, do, while
    Label = { fg = c.purple },              -- case, default
    Operator = { fg = c.fg },               -- operators (default foreground)
    Keyword = { fg = c.purple },            -- keyword scope -> #c68aee
    Exception = { fg = c.purple },          -- try, catch, throw

    -- ============================================
    -- Preprocessor
    -- ============================================
    PreProc = { fg = c.purple },            -- preprocessor
    Include = { fg = c.purple },            -- #include
    Define = { fg = c.purple },             -- #define
    Macro = { fg = c.purple },              -- macros
    PreCondit = { fg = c.purple },          -- #if, #else, #endif

    -- ============================================
    -- Types
    -- ============================================
    Type = { fg = c.yellow },               -- entity.name.type -> #f1cf8a
    StorageClass = { fg = c.purple },       -- storage scope -> #c68aee
    Structure = { fg = c.yellow },          -- struct, union, enum
    Typedef = { fg = c.yellow },            -- typedef

    -- ============================================
    -- Special
    -- ============================================
    Special = { fg = c.teal },              -- special characters
    SpecialChar = { fg = c.teal },          -- escape sequences -> #56b6c2
    Tag = { fg = c.red },                   -- entity.name.tag -> #e05f65
    Delimiter = { fg = c.fg },              -- punctuation
    SpecialComment = { fg = c.gray, italic = italic_comments }, -- special comments
    Debug = { fg = c.orange },              -- debugging statements

    -- ============================================
    -- Underlined
    -- ============================================
    Underlined = { fg = c.link, underline = true }, -- textLink.foreground -> #70a5eb

    -- ============================================
    -- Ignore
    -- ============================================
    Ignore = { fg = c.gray_dark },

    -- ============================================
    -- Error
    -- ============================================
    Error = { fg = c.error },               -- #e05f65

    -- ============================================
    -- Todo
    -- ============================================
    Todo = { fg = c.orange, bold = true },  -- TODO, FIXME, etc.

    -- ============================================
    -- Additional Syntax Groups
    -- ============================================
    Bold = { bold = true },
    Italic = { italic = true },

    -- Added text (in diffs)
    Added = { fg = c.git_add },             -- #78dba9
    Changed = { fg = c.git_change },        -- #f1cf8a
    Removed = { fg = c.git_delete },        -- #e05f65

    -- ============================================
    -- Language-specific syntax (fallback)
    -- ============================================

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

    -- Diff (non-treesitter)
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