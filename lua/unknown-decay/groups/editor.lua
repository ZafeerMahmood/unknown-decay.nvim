local M = {}

function M.get(c, config)
  local transparent = config.is_transparent()

  return {
    -- Core
    Normal = { fg = c.fg, bg = transparent and "NONE" or c.bg },
    NormalNC = { fg = c.fg, bg = transparent and "NONE" or c.bg },
    NormalFloat = { fg = c.fg, bg = c.bg_dark },
    FloatBorder = { fg = c.border_light, bg = c.bg_dark },
    FloatTitle = { fg = c.green, bg = c.bg_dark, bold = true },

    -- Cursor
    Cursor = { fg = c.cursor_bg, bg = c.cursor },
    lCursor = { fg = c.cursor_bg, bg = c.cursor },
    CursorIM = { fg = c.cursor_bg, bg = c.cursor },
    TermCursor = { fg = c.cursor_bg, bg = c.cursor },
    TermCursorNC = { fg = c.bg, bg = c.fg },

    -- Line highlighting
    CursorLine = { bg = c.bg_light },
    CursorColumn = { bg = c.bg_light },
    ColorColumn = { bg = c.bg_light },

    -- Line numbers
    LineNr = { fg = c.fg },
    CursorLineNr = { fg = c.line_nr_active, bold = true },
    LineNrAbove = { fg = c.fg },
    LineNrBelow = { fg = c.fg },

    -- Sign column
    SignColumn = { fg = c.fg, bg = transparent and "NONE" or c.bg },
    FoldColumn = { fg = c.fg_dark, bg = transparent and "NONE" or c.bg },

    -- Fold
    Folded = { fg = c.gray, bg = c.fold },
    CursorLineFold = { fg = c.fg_dark },

    -- Visual
    Visual = { bg = c.bg_visual },
    VisualNOS = { bg = c.bg_visual },

    -- Search
    Search = { fg = c.bg, bg = c.search },
    IncSearch = { fg = c.bg, bg = c.green },
    CurSearch = { fg = c.bg, bg = c.green, bold = true },
    Substitute = { fg = c.bg, bg = c.orange },

    -- Brackets
    MatchParen = { fg = c.fg_light, bg = c.bracket_match, bold = true },

    -- Whitespace
    Whitespace = { fg = c.whitespace },
    NonText = { fg = c.whitespace },
    SpecialKey = { fg = c.whitespace },

    -- Popup menu
    Pmenu = { fg = c.fg, bg = c.bg_dark },
    PmenuSel = { fg = c.fg, bg = c.pmenu_sel },
    PmenuSbar = { bg = c.bg_highlight },
    PmenuThumb = { bg = c.gray_dark },
    PmenuKind = { fg = c.purple },
    PmenuKindSel = { fg = c.purple, bg = c.pmenu_sel },
    PmenuExtra = { fg = c.fg_dark },
    PmenuExtraSel = { fg = c.fg_dark, bg = c.pmenu_sel },
    PmenuMatch = { fg = c.pmenu_match, bold = true },
    PmenuMatchSel = { fg = c.pmenu_match, bg = c.pmenu_sel, bold = true },

    -- Status line
    StatusLine = { fg = c.fg, bg = c.bg_light },
    StatusLineNC = { fg = c.fg_dark, bg = c.bg_dark },
    StatusLineTerm = { fg = c.fg, bg = c.bg_light },
    StatusLineTermNC = { fg = c.fg_dark, bg = c.bg_dark },

    -- Tab line
    TabLine = { fg = c.fg, bg = c.bg_light },
    TabLineFill = { bg = c.bg_light },
    TabLineSel = { fg = c.fg, bg = c.bg },

    -- Separators
    WinSeparator = { fg = c.border },
    VertSplit = { fg = c.border },

    -- Messages
    MsgArea = { fg = c.fg },
    MsgSeparator = { fg = c.border, bg = c.bg_light },
    ModeMsg = { fg = c.fg, bold = true },
    MoreMsg = { fg = c.green },
    Question = { fg = c.blue },
    ErrorMsg = { fg = c.error },
    WarningMsg = { fg = c.warning },

    -- Directory
    Directory = { fg = c.blue },
    Title = { fg = c.blue, bold = true },

    -- Diff
    DiffAdd = { bg = c.diff_add_bg },
    DiffChange = { bg = c.diff_change_bg },
    DiffDelete = { bg = c.diff_delete_bg },
    DiffText = { bg = c.diff_text_bg },
    DiffAdded = { fg = c.git_add, bg = c.diff_add_bg },
    DiffRemoved = { fg = c.git_delete, bg = c.diff_delete_bg },
    DiffChanged = { fg = c.git_change, bg = c.diff_change_bg },
    DiffOldFile = { fg = c.yellow },
    DiffNewFile = { fg = c.orange },
    DiffFile = { fg = c.blue },
    DiffLine = { fg = c.gray },
    DiffIndexLine = { fg = c.purple },

    -- Spell
    SpellBad = { sp = c.error, undercurl = true },
    SpellCap = { sp = c.warning, undercurl = true },
    SpellLocal = { sp = c.info, undercurl = true },
    SpellRare = { sp = c.hint, undercurl = true },

    -- Diagnostics
    DiagnosticError = { fg = c.error },
    DiagnosticWarn = { fg = c.warning },
    DiagnosticInfo = { fg = c.info },
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

    -- Health
    healthError = { fg = c.error },
    healthSuccess = { fg = c.green },
    healthWarning = { fg = c.warning },

    -- Quickfix
    qfFileName = { fg = c.blue },
    qfLineNr = { fg = c.yellow },

    -- Window
    WinBar = { fg = c.fg, bg = transparent and "NONE" or c.bg },
    WinBarNC = { fg = c.fg_dark, bg = transparent and "NONE" or c.bg },
    WinBarPath = { fg = c.gray },
    WinBarFile = { fg = c.fg_light, bold = true },
    WinBarModified = { fg = c.git_change },
    NormalSB = { fg = c.fg, bg = c.bg_dark },
    NormalDark = { fg = c.fg, bg = c.bg_dark },

    -- Help
    helpCommand = { fg = c.blue },
    helpExample = { fg = c.green },

    -- Debug
    debugPC = { bg = c.bg_highlight },
    debugBreakpoint = { fg = c.red },
    Conceal = { fg = c.gray_dark },

    -- LSP references
    LspReferenceText = { bg = "#252525" },
    LspReferenceRead = { bg = "#252a30" },
    LspReferenceWrite = { bg = "#302520", underline = true },

    -- LSP
    LspInfoBorder = { fg = c.border_light },
    LspInlayHint = { fg = c.gray_dark, italic = true },
    LspCodeLens = { fg = c.gray_dark },
    LspSignatureActiveParameter = { fg = c.orange, bold = true },

    -- Treesitter context
    TreesitterContext = { bg = c.bg_light },
    TreesitterContextLineNumber = { fg = c.line_nr_active, bg = c.bg_light },

    -- Yank
    HighlightedyankRegion = { bg = c.bg_visual },

    -- Cursorline extras
    CursorLineSign = { bg = c.bg_light },
    CursorLineFold = { fg = c.line_nr_active, bg = c.bg_light },

    -- Illuminate
    IlluminatedWordText = { bg = "#252525" },
    IlluminatedWordRead = { bg = "#252a30" },
    IlluminatedWordWrite = { bg = "#302520" },

    -- Lazy
    LazyProgressDone = { fg = c.green, bold = true },
    LazyProgressTodo = { fg = c.gray_dark, bold = true },

    -- Notify
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

    -- Noice
    NoiceCmdline = { fg = c.fg },
    NoiceCmdlineIcon = { fg = c.blue },
    NoiceCmdlineIconSearch = { fg = c.yellow },
    NoiceCmdlinePopup = { fg = c.fg, bg = c.bg_dark },
    NoiceCmdlinePopupBorder = { fg = c.blue },
    NoiceCmdlinePopupBorderSearch = { fg = c.yellow },
    NoiceConfirm = { bg = c.bg_dark },
    NoiceConfirmBorder = { fg = c.blue },
    NoiceFormatProgressDone = { fg = c.bg, bg = c.green },
    NoiceFormatProgressTodo = { bg = c.bg_highlight },
    NoiceLspProgressClient = { fg = c.blue },
    NoiceLspProgressSpinner = { fg = c.green },
    NoiceLspProgressTitle = { fg = c.purple },
    NoiceMini = { bg = c.bg_dark },
    NoicePopup = { bg = c.bg_dark },
    NoicePopupBorder = { fg = c.border_light },
    NoiceScrollbar = { bg = c.bg_highlight },
    NoiceScrollbarThumb = { bg = c.gray_dark },
    NoiceVirtualText = { fg = c.gray },

    -- DAP
    DapBreakpoint = { fg = c.red },
    DapBreakpointCondition = { fg = c.orange },
    DapBreakpointRejected = { fg = c.gray },
    DapLogPoint = { fg = c.blue },
    DapStopped = { fg = c.green },
    DapStoppedLine = { bg = "#2a3d2a" },

    -- DAP UI
    DapUIScope = { fg = c.blue },
    DapUIType = { fg = c.yellow },
    DapUIValue = { fg = c.fg },
    DapUIModifiedValue = { fg = c.orange, bold = true },
    DapUIDecoration = { fg = c.blue },
    DapUIThread = { fg = c.green },
    DapUIStoppedThread = { fg = c.green },
    DapUIFrameName = { fg = c.fg },
    DapUISource = { fg = c.purple },
    DapUILineNumber = { fg = c.blue },
    DapUIFloatBorder = { fg = c.border_light },
    DapUIWatchesEmpty = { fg = c.gray },
    DapUIWatchesValue = { fg = c.green },
    DapUIWatchesError = { fg = c.error },
    DapUIBreakpointsPath = { fg = c.blue },
    DapUIBreakpointsInfo = { fg = c.green },
    DapUIBreakpointsCurrentLine = { fg = c.green, bold = true },
    DapUIBreakpointsLine = { link = "DapUILineNumber" },
    DapUIBreakpointsDisabledLine = { fg = c.gray_dark },
    DapUICurrentFrameName = { link = "DapUIBreakpointsCurrentLine" },
    DapUIStepOver = { fg = c.blue },
    DapUIStepInto = { fg = c.blue },
    DapUIStepBack = { fg = c.blue },
    DapUIStepOut = { fg = c.blue },
    DapUIStop = { fg = c.red },
    DapUIPlayPause = { fg = c.green },
    DapUIRestart = { fg = c.green },
    DapUIUnavailable = { fg = c.gray_dark },
    DapUIWinSelect = { fg = c.blue, bold = true },

    -- Rainbow delimiters
    RainbowDelimiterRed = { fg = c.dark_yellow },
    RainbowDelimiterYellow = { fg = c.purple },
    RainbowDelimiterBlue = { fg = c.blue },
    RainbowDelimiterOrange = { fg = c.dark_yellow },
    RainbowDelimiterGreen = { fg = c.purple },
    RainbowDelimiterViolet = { fg = c.blue },
    RainbowDelimiterCyan = { fg = c.dark_yellow },

    -- Navic
    NavicText = { fg = c.fg },
    NavicSeparator = { fg = c.gray },
    NavicIconsFile = { fg = c.fg },
    NavicIconsModule = { fg = c.yellow },
    NavicIconsNamespace = { fg = c.fg },
    NavicIconsPackage = { fg = c.fg },
    NavicIconsClass = { fg = c.yellow },
    NavicIconsMethod = { fg = c.sky },
    NavicIconsProperty = { fg = c.cyan },
    NavicIconsField = { fg = c.cyan },
    NavicIconsConstructor = { fg = c.teal },
    NavicIconsEnum = { fg = c.yellow },
    NavicIconsInterface = { fg = c.yellow },
    NavicIconsFunction = { fg = c.sky },
    NavicIconsVariable = { fg = c.blue },
    NavicIconsConstant = { fg = c.orange },
    NavicIconsString = { fg = c.green },
    NavicIconsNumber = { fg = c.red },
    NavicIconsBoolean = { fg = c.teal },
    NavicIconsArray = { fg = c.yellow },
    NavicIconsObject = { fg = c.yellow },
    NavicIconsKey = { fg = c.purple },
    NavicIconsNull = { fg = c.teal },
    NavicIconsEnumMember = { fg = c.teal },
    NavicIconsStruct = { fg = c.yellow },
    NavicIconsEvent = { fg = c.orange },
    NavicIconsOperator = { fg = c.fg },
    NavicIconsTypeParameter = { fg = c.yellow },

    -- Aerial
    AerialLine = { bg = c.bg_highlight },
    AerialLineNC = { bg = c.bg_light },
    AerialGuide = { fg = c.indent_guide },
    AerialClass = { fg = c.yellow },
    AerialClassIcon = { fg = c.yellow },
    AerialFunction = { fg = c.sky },
    AerialFunctionIcon = { fg = c.sky },
    AerialMethod = { fg = c.sky },
    AerialMethodIcon = { fg = c.sky },

    -- Leap / Hop
    LeapMatch = { fg = c.green, bold = true, underline = true },
    LeapLabelPrimary = { fg = c.bg, bg = c.red, bold = true },
    LeapLabelSecondary = { fg = c.bg, bg = c.blue, bold = true },
    LeapBackdrop = { fg = c.gray_dark },
    HopNextKey = { fg = c.red, bold = true },
    HopNextKey1 = { fg = c.blue, bold = true },
    HopNextKey2 = { fg = c.teal },
    HopUnmatched = { fg = c.gray_dark },

    -- Snacks
    SnacksNormal = { fg = c.fg, bg = c.bg_dark },
    SnacksBorder = { fg = c.border_light, bg = c.bg_dark },
    SnacksTitle = { fg = c.green, bold = true },
    SnacksFooter = { fg = c.gray },
    SnacksBackdrop = { bg = "#000000" },
    SnacksIndent = { fg = c.indent_guide },
    SnacksIndentScope = { fg = c.blue },
    SnacksDashboardHeader = { fg = c.blue },
    SnacksDashboardFooter = { fg = c.gray, italic = true },
    SnacksDashboardKey = { fg = c.orange },
    SnacksDashboardDesc = { fg = c.fg },
    SnacksDashboardIcon = { fg = c.blue },
    SnacksDashboardDir = { fg = c.gray },
    SnacksDashboardFile = { fg = c.fg },
    SnacksDashboardSpecial = { fg = c.purple },
    SnacksNotifierInfo = { fg = c.info },
    SnacksNotifierWarn = { fg = c.warning },
    SnacksNotifierError = { fg = c.error },
    SnacksNotifierDebug = { fg = c.gray },
    SnacksNotifierTrace = { fg = c.purple },
    SnacksNotifierIconInfo = { fg = c.info },
    SnacksNotifierIconWarn = { fg = c.warning },
    SnacksNotifierIconError = { fg = c.error },
    SnacksNotifierIconDebug = { fg = c.gray },
    SnacksNotifierIconTrace = { fg = c.purple },
  }
end

return M
