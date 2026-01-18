-- unknown-decay/groups/plugins.lua
-- Plugin-specific highlight groups mapped from VS Code decay.json

local M = {}

function M.get(c, config)
  local transparent = config.is_transparent()

  return {
    -- ============================================
    -- TELESCOPE
    -- ============================================

    TelescopeNormal = { fg = c.fg, bg = c.bg_dark },
    TelescopeBorder = { fg = c.border_light, bg = c.bg_dark },
    TelescopeTitle = { fg = c.green, bold = true },

    -- Prompt
    TelescopePromptNormal = { fg = c.fg, bg = c.bg_highlight },
    TelescopePromptBorder = { fg = c.bg_highlight, bg = c.bg_highlight },
    TelescopePromptTitle = { fg = c.bg, bg = c.green, bold = true },
    TelescopePromptPrefix = { fg = c.green },
    TelescopePromptCounter = { fg = c.gray },

    -- Preview
    TelescopePreviewNormal = { fg = c.fg, bg = c.bg_dark },
    TelescopePreviewBorder = { fg = c.border_light, bg = c.bg_dark },
    TelescopePreviewTitle = { fg = c.bg, bg = c.blue, bold = true },
    TelescopePreviewLine = { bg = c.bg_highlight },

    -- Results
    TelescopeResultsNormal = { fg = c.fg, bg = c.bg_dark },
    TelescopeResultsBorder = { fg = c.border_light, bg = c.bg_dark },
    TelescopeResultsTitle = { fg = c.bg_dark, bg = c.bg_dark },

    -- Selection
    TelescopeSelection = { fg = c.fg, bg = c.bg_highlight },
    TelescopeSelectionCaret = { fg = c.green, bg = c.bg_highlight },
    TelescopeMultiSelection = { fg = c.purple, bg = c.bg_highlight },
    TelescopeMultiIcon = { fg = c.purple },

    -- Matching
    TelescopeMatching = { fg = c.green, bold = true },         -- list.highlightForeground -> #78dba9

    -- ============================================
    -- NEO-TREE
    -- ============================================

    NeoTreeNormal = { fg = c.fg, bg = "#13171b" },             -- sideBar
    NeoTreeNormalNC = { fg = c.fg, bg = "#13171b" },
    NeoTreeVertSplit = { fg = "#13171b", bg = "#13171b" },
    NeoTreeWinSeparator = { fg = "#13171b", bg = "#13171b" },
    NeoTreeEndOfBuffer = { fg = "#13171b" },

    NeoTreeRootName = { fg = c.fg, bold = true },
    NeoTreeFileName = { fg = c.fg },                           -- sideBar.foreground -> #b6beca
    NeoTreeFileIcon = { fg = c.blue },
    NeoTreeDirectoryName = { fg = c.blue },
    NeoTreeDirectoryIcon = { fg = c.blue },
    NeoTreeSymbolicLinkTarget = { fg = c.aqua },
    NeoTreeExpander = { fg = c.gray_dark },
    NeoTreeIndentMarker = { fg = c.bg_light },                 -- tree.indentGuidesStroke -> #15191e

    -- Git status colors from gitDecoration
    NeoTreeGitAdded = { fg = c.git_add },                      -- #78dba9
    NeoTreeGitConflict = { fg = c.git_conflict },              -- #c68aee
    NeoTreeGitDeleted = { fg = c.git_delete },                 -- #e05f65
    NeoTreeGitIgnored = { fg = c.git_ignored },                -- #485263
    NeoTreeGitModified = { fg = c.git_change },                -- #f1cf8a
    NeoTreeGitUnstaged = { fg = c.git_change },
    NeoTreeGitUntracked = { fg = c.git_untracked },            -- #7ddac5
    NeoTreeGitStaged = { fg = c.green },

    NeoTreeFloatBorder = { fg = c.border_light },
    NeoTreeFloatTitle = { fg = c.green, bold = true },
    NeoTreeTitleBar = { fg = c.bg, bg = c.green },

    NeoTreeCursorLine = { bg = c.bg_highlight },
    NeoTreeDimText = { fg = c.gray_dark },
    NeoTreeDotfile = { fg = c.gray },
    NeoTreeHiddenByName = { fg = c.gray },
    NeoTreeFilterTerm = { fg = c.green, bold = true },
    NeoTreeMessage = { fg = c.gray, italic = true },
    NeoTreeModified = { fg = c.git_change },
    NeoTreePreview = { bg = c.bg_highlight },
    NeoTreeTabActive = { fg = c.fg, bg = c.bg, bold = true },
    NeoTreeTabInactive = { fg = c.gray, bg = c.bg_light },
    NeoTreeTabSeparatorActive = { fg = c.green, bg = c.bg },
    NeoTreeTabSeparatorInactive = { fg = c.bg_light, bg = c.bg_light },

    -- ============================================
    -- GITSIGNS
    -- ============================================

    GitSignsAdd = { fg = c.git_add },                          -- editorGutter.addedBackground -> #78dba9
    GitSignsChange = { fg = c.aqua },                          -- editorGutter.modifiedBackground -> #7ddac5
    GitSignsDelete = { fg = c.git_delete },                    -- editorGutter.deletedBackground -> #e05f65

    GitSignsAddNr = { fg = c.git_add },
    GitSignsChangeNr = { fg = c.aqua },
    GitSignsDeleteNr = { fg = c.git_delete },

    GitSignsAddLn = { bg = c.diff_add },
    GitSignsChangeLn = { bg = c.diff_change },
    GitSignsDeleteLn = { bg = c.diff_delete },

    GitSignsAddInline = { bg = "#254535" },
    GitSignsChangeInline = { bg = "#254540" },
    GitSignsDeleteInline = { bg = "#452528" },

    GitSignsCurrentLineBlame = { fg = c.gray_dark, italic = true },

    GitSignsAddPreview = { fg = c.git_add },
    GitSignsDeletePreview = { fg = c.git_delete },

    -- ============================================
    -- WHICH-KEY
    -- ============================================

    WhichKey = { fg = c.sky },                                 -- Primary key color
    WhichKeyGroup = { fg = c.purple },                         -- Group names
    WhichKeySeparator = { fg = c.gray_dark },
    WhichKeyDesc = { fg = c.fg },                              -- Descriptions
    WhichKeyValue = { fg = c.gray },
    WhichKeyFloat = { bg = c.bg_dark },
    WhichKeyBorder = { fg = c.border_light, bg = c.bg_dark },
    WhichKeyNormal = { bg = c.bg_dark },

    -- ============================================
    -- MINI.NVIM
    -- ============================================

    -- Mini.statusline
    MiniStatuslineDevinfo = { fg = c.fg, bg = c.bg_highlight },
    MiniStatuslineFileinfo = { fg = c.fg, bg = c.bg_highlight },
    MiniStatuslineFilename = { fg = c.fg, bg = c.bg_light },
    MiniStatuslineInactive = { fg = c.gray_dark, bg = c.bg_light },
    MiniStatuslineModeCommand = { fg = c.bg, bg = c.yellow, bold = true },
    MiniStatuslineModeInsert = { fg = c.bg, bg = c.green, bold = true },
    MiniStatuslineModeNormal = { fg = c.bg, bg = c.blue, bold = true },
    MiniStatuslineModeOther = { fg = c.bg, bg = c.teal, bold = true },
    MiniStatuslineModeReplace = { fg = c.bg, bg = c.red, bold = true },
    MiniStatuslineModeVisual = { fg = c.bg, bg = c.purple, bold = true },

    -- Mini.tabline
    MiniTablineCurrent = { fg = c.fg, bg = c.bg, bold = true },
    MiniTablineFill = { bg = c.bg_light },
    MiniTablineHidden = { fg = c.gray, bg = c.bg_light },
    MiniTablineModifiedCurrent = { fg = c.git_change, bg = c.bg, bold = true },
    MiniTablineModifiedHidden = { fg = c.git_change, bg = c.bg_light },
    MiniTablineModifiedVisible = { fg = c.git_change, bg = c.bg_light },
    MiniTablineTabpagesection = { fg = c.fg, bg = c.bg_highlight },
    MiniTablineVisible = { fg = c.fg, bg = c.bg_light },

    -- Mini.indentscope
    MiniIndentscopeSymbol = { fg = c.blue },
    MiniIndentscopeSymbolOff = { fg = c.gray_dark },

    -- Mini.cursorword
    MiniCursorword = { bg = c.word_highlight },
    MiniCursorwordCurrent = { bg = c.word_highlight },

    -- Mini.surround
    MiniSurround = { fg = c.bg, bg = c.orange },

    -- Mini.jump
    MiniJump = { fg = c.bg, bg = c.yellow, bold = true },
    MiniJump2dSpot = { fg = c.red, bold = true },
    MiniJump2dSpotAhead = { fg = c.teal },
    MiniJump2dSpotUnique = { fg = c.orange, bold = true },

    -- Mini.files
    MiniFilesDirectory = { fg = c.blue },
    MiniFilesFile = { fg = c.fg },
    MiniFilesNormal = { fg = c.fg, bg = c.bg_dark },
    MiniFilesBorder = { fg = c.border_light, bg = c.bg_dark },
    MiniFilesCursorLine = { bg = c.bg_highlight },
    MiniFilesTitle = { fg = c.green, bold = true },
    MiniFilesTitleFocused = { fg = c.green, bold = true },

    -- Mini.pick
    MiniPickBorder = { fg = c.border_light, bg = c.bg_dark },
    MiniPickBorderBusy = { fg = c.yellow },
    MiniPickBorderText = { fg = c.green, bold = true },
    MiniPickIconDirectory = { fg = c.blue },
    MiniPickIconFile = { fg = c.fg },
    MiniPickHeader = { fg = c.purple },
    MiniPickMatchCurrent = { bg = c.bg_highlight },
    MiniPickMatchMarked = { bg = c.bg_visual },
    MiniPickMatchRanges = { fg = c.green, bold = true },
    MiniPickNormal = { fg = c.fg, bg = c.bg_dark },
    MiniPickPreviewLine = { bg = c.bg_highlight },
    MiniPickPreviewRegion = { bg = c.bg_visual },
    MiniPickPrompt = { fg = c.green },

    -- ============================================
    -- INDENT-BLANKLINE
    -- ============================================

    IblIndent = { fg = c.indent_guide },                       -- editorIndentGuide.background -> #1a1e23
    IblScope = { fg = c.indent_guide_active },                 -- editorIndentGuide.activeBackground -> #242931
    IblWhitespace = { fg = c.whitespace },
    IndentBlanklineChar = { fg = c.indent_guide },
    IndentBlanklineContextChar = { fg = c.indent_guide_active },
    IndentBlanklineContextStart = { sp = c.indent_guide_active, underline = true },
    IndentBlanklineSpaceChar = { fg = c.whitespace },
    IndentBlanklineSpaceCharBlankline = { fg = c.whitespace },

    -- ============================================
    -- BLINK.CMP (Completion)
    -- ============================================

    BlinkCmpMenu = { fg = c.fg, bg = c.bg_dark },
    BlinkCmpMenuBorder = { fg = c.border_light, bg = c.bg_dark },
    BlinkCmpMenuSelection = { bg = c.pmenu_sel },              -- editorSuggestWidget.selectedBackground -> #7ddac544
    BlinkCmpScrollBarThumb = { bg = c.gray_dark },
    BlinkCmpScrollBarGutter = { bg = c.bg_dark },

    BlinkCmpLabel = { fg = c.fg },
    BlinkCmpLabelDeprecated = { fg = c.gray, strikethrough = true },
    BlinkCmpLabelMatch = { fg = c.pmenu_match, bold = true },  -- editorSuggestWidget.highlightForeground -> #78dba9
    BlinkCmpLabelDetail = { fg = c.gray },
    BlinkCmpLabelDescription = { fg = c.gray },

    BlinkCmpKind = { fg = c.purple },
    BlinkCmpKindClass = { fg = c.yellow },
    BlinkCmpKindColor = { fg = c.orange },
    BlinkCmpKindConstant = { fg = c.orange },
    BlinkCmpKindConstructor = { fg = c.yellow },
    BlinkCmpKindEnum = { fg = c.yellow },
    BlinkCmpKindEnumMember = { fg = c.teal },
    BlinkCmpKindEvent = { fg = c.orange },
    BlinkCmpKindField = { fg = c.cyan },
    BlinkCmpKindFile = { fg = c.fg },
    BlinkCmpKindFolder = { fg = c.blue },
    BlinkCmpKindFunction = { fg = c.sky },
    BlinkCmpKindInterface = { fg = c.yellow },
    BlinkCmpKindKeyword = { fg = c.purple },
    BlinkCmpKindMethod = { fg = c.sky },
    BlinkCmpKindModule = { fg = c.fg },
    BlinkCmpKindOperator = { fg = c.fg },
    BlinkCmpKindProperty = { fg = c.cyan },
    BlinkCmpKindReference = { fg = c.blue },
    BlinkCmpKindSnippet = { fg = c.teal },
    BlinkCmpKindStruct = { fg = c.yellow },
    BlinkCmpKindText = { fg = c.fg },
    BlinkCmpKindTypeParameter = { fg = c.yellow },
    BlinkCmpKindUnit = { fg = c.blue },
    BlinkCmpKindValue = { fg = c.orange },
    BlinkCmpKindVariable = { fg = c.blue },

    BlinkCmpSource = { fg = c.gray },
    BlinkCmpGhostText = { fg = c.gray_dark },
    BlinkCmpDoc = { fg = c.fg, bg = c.bg },
    BlinkCmpDocBorder = { fg = c.border_light, bg = c.bg },
    BlinkCmpDocCursorLine = { bg = c.bg_highlight },
    BlinkCmpSignatureHelp = { fg = c.fg, bg = c.bg },
    BlinkCmpSignatureHelpBorder = { fg = c.border_light, bg = c.bg },
    BlinkCmpSignatureHelpActiveParameter = { fg = c.orange, bold = true },

    -- ============================================
    -- NVIM-CMP (Alternative completion)
    -- ============================================

    CmpItemAbbrMatch = { fg = c.pmenu_match, bold = true },
    CmpItemAbbrMatchFuzzy = { fg = c.pmenu_match, bold = true },
    CmpItemAbbrDeprecated = { fg = c.gray, strikethrough = true },
    CmpItemMenu = { fg = c.gray },
    CmpItemKindClass = { fg = c.yellow },
    CmpItemKindColor = { fg = c.orange },
    CmpItemKindConstant = { fg = c.orange },
    CmpItemKindConstructor = { fg = c.yellow },
    CmpItemKindEnum = { fg = c.yellow },
    CmpItemKindEnumMember = { fg = c.teal },
    CmpItemKindEvent = { fg = c.orange },
    CmpItemKindField = { fg = c.cyan },
    CmpItemKindFile = { fg = c.fg },
    CmpItemKindFolder = { fg = c.blue },
    CmpItemKindFunction = { fg = c.sky },
    CmpItemKindInterface = { fg = c.yellow },
    CmpItemKindKeyword = { fg = c.purple },
    CmpItemKindMethod = { fg = c.sky },
    CmpItemKindModule = { fg = c.fg },
    CmpItemKindOperator = { fg = c.fg },
    CmpItemKindProperty = { fg = c.cyan },
    CmpItemKindReference = { fg = c.blue },
    CmpItemKindSnippet = { fg = c.teal },
    CmpItemKindStruct = { fg = c.yellow },
    CmpItemKindText = { fg = c.fg },
    CmpItemKindTypeParameter = { fg = c.yellow },
    CmpItemKindUnit = { fg = c.blue },
    CmpItemKindValue = { fg = c.orange },
    CmpItemKindVariable = { fg = c.blue },

    -- ============================================
    -- FLASH.NVIM
    -- ============================================

    FlashBackdrop = { fg = c.gray_dark },
    FlashMatch = { fg = c.fg, bg = c.bg_visual },
    FlashCurrent = { fg = c.bg, bg = c.green },
    FlashLabel = { fg = c.bg, bg = c.red, bold = true },

    -- ============================================
    -- TROUBLE.NVIM
    -- ============================================

    TroubleNormal = { fg = c.fg, bg = c.bg_dark },
    TroubleText = { fg = c.fg },
    TroubleCount = { fg = c.purple, bg = c.bg_highlight },
    TroubleError = { fg = c.error },
    TroubleWarning = { fg = c.warning },
    TroubleInformation = { fg = c.info },
    TroubleHint = { fg = c.hint },
    TroubleLocation = { fg = c.gray },
    TroubleFile = { fg = c.blue },
    TroubleFoldIcon = { fg = c.gray_dark },
    TroubleIndent = { fg = c.indent_guide },
    TroubleCode = { fg = c.gray },
    TroubleSource = { fg = c.gray, italic = true },

    -- ============================================
    -- TODO-COMMENTS
    -- ============================================

    TodoBgFIX = { fg = c.bg, bg = c.red, bold = true },
    TodoBgHACK = { fg = c.bg, bg = c.orange, bold = true },
    TodoBgNOTE = { fg = c.bg, bg = c.info, bold = true },
    TodoBgPERF = { fg = c.bg, bg = c.purple, bold = true },
    TodoBgTODO = { fg = c.bg, bg = c.yellow, bold = true },
    TodoBgWARN = { fg = c.bg, bg = c.warning, bold = true },
    TodoFgFIX = { fg = c.red },
    TodoFgHACK = { fg = c.orange },
    TodoFgNOTE = { fg = c.info },
    TodoFgPERF = { fg = c.purple },
    TodoFgTODO = { fg = c.yellow },
    TodoFgWARN = { fg = c.warning },
    TodoSignFIX = { fg = c.red },
    TodoSignHACK = { fg = c.orange },
    TodoSignNOTE = { fg = c.info },
    TodoSignPERF = { fg = c.purple },
    TodoSignTODO = { fg = c.yellow },
    TodoSignWARN = { fg = c.warning },

    -- ============================================
    -- DASHBOARD / ALPHA
    -- ============================================

    DashboardShortCut = { fg = c.teal },
    DashboardHeader = { fg = c.blue },
    DashboardCenter = { fg = c.purple },
    DashboardFooter = { fg = c.gray, italic = true },
    DashboardKey = { fg = c.orange },
    DashboardDesc = { fg = c.fg },
    DashboardIcon = { fg = c.blue },

    AlphaShortcut = { fg = c.teal },
    AlphaHeader = { fg = c.blue },
    AlphaHeaderLabel = { fg = c.orange },
    AlphaFooter = { fg = c.gray, italic = true },
    AlphaButtons = { fg = c.purple },

    -- ============================================
    -- NVIM-TREE
    -- ============================================

    NvimTreeNormal = { fg = c.fg, bg = c.bg_dark },
    NvimTreeNormalNC = { fg = c.fg, bg = c.bg_dark },
    NvimTreeRootFolder = { fg = c.fg, bold = true },
    NvimTreeFolderName = { fg = c.blue },
    NvimTreeFolderIcon = { fg = c.blue },
    NvimTreeOpenedFolderName = { fg = c.blue },
    NvimTreeEmptyFolderName = { fg = c.gray },
    NvimTreeSymlink = { fg = c.aqua },
    NvimTreeSpecialFile = { fg = c.purple },
    NvimTreeImageFile = { fg = c.fg },
    NvimTreeOpenedFile = { fg = c.green },
    NvimTreeGitDirty = { fg = c.git_change },
    NvimTreeGitNew = { fg = c.git_untracked },
    NvimTreeGitDeleted = { fg = c.git_delete },
    NvimTreeGitStaged = { fg = c.green },
    NvimTreeIndentMarker = { fg = c.indent_guide },
    NvimTreeWinSeparator = { fg = c.bg_dark, bg = c.bg_dark },

    -- ============================================
    -- BUFFERLINE
    -- ============================================

    BufferLineFill = { bg = c.bg_light },
    BufferLineBackground = { fg = c.fg, bg = c.bg_light },
    BufferLineBufferVisible = { fg = c.fg, bg = c.bg_light },
    BufferLineBufferSelected = { fg = c.fg, bg = c.bg, bold = true },
    BufferLineTab = { fg = c.gray, bg = c.bg_light },
    BufferLineTabSelected = { fg = c.fg, bg = c.bg },
    BufferLineTabSeparator = { fg = c.bg_light, bg = c.bg_light },
    BufferLineTabSeparatorSelected = { fg = c.bg, bg = c.bg },
    BufferLineSeparator = { fg = c.bg_light, bg = c.bg_light },
    BufferLineSeparatorVisible = { fg = c.bg_light, bg = c.bg_light },
    BufferLineSeparatorSelected = { fg = c.bg, bg = c.bg },
    BufferLineIndicatorSelected = { fg = c.border_active },  -- tab.activeBorder -> #70a5eb
    BufferLineIndicatorVisible = { fg = c.bg_light },
    BufferLineModified = { fg = c.git_change },
    BufferLineModifiedSelected = { fg = c.git_change },
    BufferLineModifiedVisible = { fg = c.git_change },
    BufferLineCloseButton = { fg = c.gray },
    BufferLineCloseButtonSelected = { fg = c.red },
    BufferLineCloseButtonVisible = { fg = c.gray },

    -- ============================================
    -- LUALINE
    -- ============================================

    -- Uses Vim's StatusLine groups by default, but can be customized
    lualine_a_normal = { fg = c.bg, bg = c.blue, bold = true },
    lualine_a_insert = { fg = c.bg, bg = c.green, bold = true },
    lualine_a_visual = { fg = c.bg, bg = c.purple, bold = true },
    lualine_a_replace = { fg = c.bg, bg = c.red, bold = true },
    lualine_a_command = { fg = c.bg, bg = c.yellow, bold = true },
    lualine_b_normal = { fg = c.fg, bg = c.bg_highlight },
    lualine_c_normal = { fg = c.fg, bg = c.bg_light },

    -- ============================================
    -- MASON
    -- ============================================

    MasonNormal = { fg = c.fg, bg = c.bg_dark },
    MasonHeader = { fg = c.bg, bg = c.green, bold = true },
    MasonHeaderSecondary = { fg = c.bg, bg = c.blue, bold = true },
    MasonHighlight = { fg = c.green },
    MasonHighlightBlock = { fg = c.bg, bg = c.green },
    MasonHighlightBlockBold = { fg = c.bg, bg = c.green, bold = true },
    MasonHighlightSecondary = { fg = c.blue },
    MasonHighlightBlockSecondary = { fg = c.bg, bg = c.blue },
    MasonMuted = { fg = c.gray },
    MasonMutedBlock = { fg = c.bg, bg = c.gray },
    MasonError = { fg = c.error },

    -- ============================================
    -- LAZY.NVIM
    -- ============================================

    LazyButton = { fg = c.fg, bg = c.bg_highlight },
    LazyButtonActive = { fg = c.bg, bg = c.green, bold = true },
    LazyComment = { fg = c.gray },
    LazyCommit = { fg = c.teal },
    LazyCommitIssue = { fg = c.orange },
    LazyCommitScope = { fg = c.gray, italic = true },
    LazyCommitType = { fg = c.purple },
    LazyDimmed = { fg = c.gray_dark },
    LazyDir = { fg = c.blue },
    LazyH1 = { fg = c.bg, bg = c.green, bold = true },
    LazyH2 = { fg = c.blue, bold = true },
    LazyLocal = { fg = c.orange },
    LazyNoCond = { fg = c.red },
    LazyNormal = { fg = c.fg, bg = c.bg_dark },
    LazyProp = { fg = c.cyan },
    LazyReasonCmd = { fg = c.yellow },
    LazyReasonEvent = { fg = c.orange },
    LazyReasonFt = { fg = c.teal },
    LazyReasonImport = { fg = c.purple },
    LazyReasonKeys = { fg = c.blue },
    LazyReasonPlugin = { fg = c.green },
    LazyReasonRuntime = { fg = c.gray },
    LazyReasonSource = { fg = c.gray },
    LazyReasonStart = { fg = c.green },
    LazySpecial = { fg = c.green },
    LazyTaskError = { fg = c.error },
    LazyTaskOutput = { fg = c.fg },
    LazyUrl = { fg = c.link, underline = true },
    LazyValue = { fg = c.green },

    -- ============================================
    -- HLARGS.NVIM (Parameter highlighting)
    -- ============================================

    Hlargs = { fg = c.teal, italic = true },
  }
end

return M