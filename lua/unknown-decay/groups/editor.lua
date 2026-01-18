-- unknown-decay/groups/editor.lua
-- Editor UI highlight groups mapped from VS Code decay.json "colors" section

local M = {}

function M.get(c, config)
  local transparent = config.is_transparent()

  return {
    -- ============================================
    -- Core Editor
    -- ============================================
    Normal = { fg = c.fg, bg = transparent and "NONE" or c.bg },
    NormalNC = { fg = c.fg, bg = transparent and "NONE" or c.bg },
    NormalFloat = { fg = c.fg, bg = c.bg_dark },
    FloatBorder = { fg = c.border_light, bg = c.bg_dark },
    FloatTitle = { fg = c.green, bg = c.bg_dark, bold = true },

    -- ============================================
    -- Cursor
    -- ============================================
    Cursor = { fg = c.cursor_bg, bg = c.cursor },      -- Orange cursor (override)
    lCursor = { fg = c.cursor_bg, bg = c.cursor },
    CursorIM = { fg = c.cursor_bg, bg = c.cursor },
    TermCursor = { fg = c.cursor_bg, bg = c.cursor },
    TermCursorNC = { fg = c.bg, bg = c.fg },

    -- ============================================
    -- Line Highlighting
    -- ============================================
    CursorLine = { bg = c.bg_light },                  -- editor.lineHighlightBackground
    CursorColumn = { bg = c.bg_light },
    ColorColumn = { bg = c.bg_light },

    -- ============================================
    -- Line Numbers
    -- ============================================
    LineNr = { fg = c.fg },                            -- editorLineNumber.foreground
    CursorLineNr = { fg = c.line_nr_active, bold = true }, -- Orange active line (override)
    LineNrAbove = { fg = c.fg },
    LineNrBelow = { fg = c.fg },

    -- ============================================
    -- Sign Column
    -- ============================================
    SignColumn = { fg = c.fg, bg = transparent and "NONE" or c.bg },
    FoldColumn = { fg = c.fg_dark, bg = transparent and "NONE" or c.bg },

    -- ============================================
    -- Fold
    -- ============================================
    Folded = { fg = c.gray, bg = c.fold },             -- editor.foldBackground
    CursorLineFold = { fg = c.fg_dark },

    -- ============================================
    -- Visual Selection
    -- ============================================
    Visual = { bg = c.bg_visual },                     -- editor.selectionBackground
    VisualNOS = { bg = c.bg_visual },

    -- ============================================
    -- Search
    -- ============================================
    Search = { fg = c.bg, bg = c.search },             -- editor.findMatchBackground
    IncSearch = { fg = c.bg, bg = c.green },
    CurSearch = { fg = c.bg, bg = c.green, bold = true },
    Substitute = { fg = c.bg, bg = c.orange },

    -- ============================================
    -- Matching Brackets
    -- ============================================
    MatchParen = { fg = c.fg_light, bg = c.bracket_match, bold = true },

    -- ============================================
    -- Whitespace and Special Characters
    -- ============================================
    Whitespace = { fg = c.whitespace },                -- editorWhitespace.foreground
    NonText = { fg = c.whitespace },
    SpecialKey = { fg = c.whitespace },

    -- ============================================
    -- Popup Menu (Completion)
    -- ============================================
    Pmenu = { fg = c.fg, bg = c.bg_dark },             -- editorSuggestWidget.background
    PmenuSel = { fg = c.fg, bg = c.pmenu_sel },        -- editorSuggestWidget.selectedBackground
    PmenuSbar = { bg = c.bg_highlight },
    PmenuThumb = { bg = c.gray_dark },
    PmenuKind = { fg = c.purple },
    PmenuKindSel = { fg = c.purple, bg = c.pmenu_sel },
    PmenuExtra = { fg = c.fg_dark },
    PmenuExtraSel = { fg = c.fg_dark, bg = c.pmenu_sel },
    PmenuMatch = { fg = c.pmenu_match, bold = true },  -- editorSuggestWidget.highlightForeground
    PmenuMatchSel = { fg = c.pmenu_match, bg = c.pmenu_sel, bold = true },

    -- ============================================
    -- Status Line
    -- ============================================
    StatusLine = { fg = c.fg, bg = c.bg_light },       -- statusBar.background
    StatusLineNC = { fg = c.fg_dark, bg = c.bg_dark },
    StatusLineTerm = { fg = c.fg, bg = c.bg_light },
    StatusLineTermNC = { fg = c.fg_dark, bg = c.bg_dark },

    -- ============================================
    -- Tab Line
    -- ============================================
    TabLine = { fg = c.fg, bg = c.bg_light },          -- tab.inactiveBackground
    TabLineFill = { bg = c.bg_light },                 -- editorGroupHeader.tabsBackground
    TabLineSel = { fg = c.fg, bg = c.bg },             -- tab.activeBackground

    -- ============================================
    -- Window Separators
    -- ============================================
    WinSeparator = { fg = c.border },                  -- editorGroup.border
    VertSplit = { fg = c.border },

    -- ============================================
    -- Messages
    -- ============================================
    MsgArea = { fg = c.fg },
    MsgSeparator = { fg = c.border, bg = c.bg_light },
    ModeMsg = { fg = c.fg, bold = true },
    MoreMsg = { fg = c.green },
    Question = { fg = c.blue },

    -- ============================================
    -- Error / Warning Messages
    -- ============================================
    ErrorMsg = { fg = c.error },
    WarningMsg = { fg = c.warning },

    -- ============================================
    -- Directory Listing
    -- ============================================
    Directory = { fg = c.blue },

    -- ============================================
    -- Title
    -- ============================================
    Title = { fg = c.blue, bold = true },

    -- ============================================
    -- Diff (use blend for transparency effect)
    -- ============================================
    DiffAdd = { bg = "#1e3a2a" },                      -- diffEditor.insertedTextBackground (blended)
    DiffChange = { bg = "#1e3530" },                   -- Modified line background (blended)
    DiffDelete = { bg = "#3a1e20" },                   -- diffEditor.removedTextBackground (blended)
    DiffText = { bg = "#4a3020" },                     -- Changed text highlight (blended)

    -- ============================================
    -- Spell Checking
    -- ============================================
    SpellBad = { sp = c.error, undercurl = true },
    SpellCap = { sp = c.warning, undercurl = true },
    SpellLocal = { sp = c.info, undercurl = true },
    SpellRare = { sp = c.hint, undercurl = true },

    -- ============================================
    -- Diagnostics
    -- ============================================
    DiagnosticError = { fg = c.error },                -- editorError.foreground
    DiagnosticWarn = { fg = c.warning },               -- editorWarning.foreground
    DiagnosticInfo = { fg = c.info },                  -- editorInfo.foreground
    DiagnosticHint = { fg = c.hint },
    DiagnosticOk = { fg = c.green },

    DiagnosticVirtualTextError = { fg = c.error, bg = "#1f1618" },
    DiagnosticVirtualTextWarn = { fg = c.warning, bg = "#1f1c16" },
    DiagnosticVirtualTextInfo = { fg = c.info, bg = "#161a1f" },
    DiagnosticVirtualTextHint = { fg = c.hint, bg = "#161f1d" },
    DiagnosticVirtualTextOk = { fg = c.green, bg = "#161f1b" },

    DiagnosticUnderlineError = { sp = c.error, undercurl = true },
    DiagnosticUnderlineWarn = { sp = c.warning, undercurl = true },
    DiagnosticUnderlineInfo = { sp = c.info, undercurl = true },
    DiagnosticUnderlineHint = { sp = c.hint, undercurl = true },
    DiagnosticUnderlineOk = { sp = c.green, undercurl = true },

    DiagnosticFloatingError = { fg = c.error },
    DiagnosticFloatingWarn = { fg = c.warning },
    DiagnosticFloatingInfo = { fg = c.info },
    DiagnosticFloatingHint = { fg = c.hint },
    DiagnosticFloatingOk = { fg = c.green },

    DiagnosticSignError = { fg = c.error },
    DiagnosticSignWarn = { fg = c.warning },
    DiagnosticSignInfo = { fg = c.info },
    DiagnosticSignHint = { fg = c.hint },
    DiagnosticSignOk = { fg = c.green },

    -- ============================================
    -- Health Check
    -- ============================================
    healthError = { fg = c.error },
    healthSuccess = { fg = c.green },
    healthWarning = { fg = c.warning },

    -- ============================================
    -- Quick Fix / Location List
    -- ============================================
    qfFileName = { fg = c.blue },
    qfLineNr = { fg = c.yellow },

    -- ============================================
    -- Window Management
    -- ============================================
    WinBar = { fg = c.fg, bg = transparent and "NONE" or c.bg },
    WinBarNC = { fg = c.fg_dark, bg = transparent and "NONE" or c.bg },

    -- ============================================
    -- Neovim Floating Windows
    -- ============================================
    NormalSB = { fg = c.fg, bg = c.bg_dark },          -- Sidebar
    NormalDark = { fg = c.fg, bg = c.bg_dark },

    -- ============================================
    -- Help
    -- ============================================
    helpCommand = { fg = c.blue },
    helpExample = { fg = c.green },

    -- ============================================
    -- Debug
    -- ============================================
    debugPC = { bg = c.bg_highlight },
    debugBreakpoint = { fg = c.red },

    -- ============================================
    -- Conceal
    -- ============================================
    Conceal = { fg = c.gray_dark },

    -- ============================================
    -- Cursor Word Highlight
    -- ============================================
    LspReferenceText = { bg = "#2a2a2a" },              -- editor.wordHighlightBackground
    LspReferenceRead = { bg = "#2a2a2a" },
    LspReferenceWrite = { bg = "#1e3050" },            -- editor.wordHighlightStrongBackground

    -- ============================================
    -- LSP Info
    -- ============================================
    LspInfoBorder = { fg = c.border_light },
    LspInlayHint = { fg = c.gray_dark, italic = true },
    LspCodeLens = { fg = c.gray_dark },                -- editorCodeLens.foreground
    LspSignatureActiveParameter = { fg = c.orange, bold = true },

    -- ============================================
    -- Treesitter Context
    -- ============================================
    TreesitterContext = { bg = c.bg_light },
    TreesitterContextLineNumber = { fg = c.line_nr_active, bg = c.bg_light },

    -- ============================================
    -- Yanked Highlight
    -- ============================================
    HighlightedyankRegion = { bg = c.bg_visual },

    -- ============================================
    -- Lazy.nvim
    -- ============================================
    LazyProgressDone = { fg = c.green, bold = true },
    LazyProgressTodo = { fg = c.gray_dark, bold = true },

    -- ============================================
    -- Notify
    -- ============================================
    NotifyERRORBorder = { fg = c.error },
    NotifyWARNBorder = { fg = c.warning },
    NotifyINFOBorder = { fg = c.info },
    NotifyDEBUGBorder = { fg = c.gray },
    NotifyTRACEBorder = { fg = c.purple },
    NotifyERRORIcon = { fg = c.error },
    NotifyWARNIcon = { fg = c.warning },
    NotifyINFOIcon = { fg = c.info },
    NotifyDEBUGIcon = { fg = c.gray },
    NotifyTRACEIcon = { fg = c.purple },
    NotifyERRORTitle = { fg = c.error },
    NotifyWARNTitle = { fg = c.warning },
    NotifyINFOTitle = { fg = c.info },
    NotifyDEBUGTitle = { fg = c.gray },
    NotifyTRACETitle = { fg = c.purple },
    NotifyBackground = { bg = c.bg },
  }
end

return M