-- unknown-decay/palette.lua
-- Color palette extracted from VS Code decay.json theme
-- With personal overrides from decay-vscode-overide.json

local M = {}

M.colors = {
  -- ============================================
  -- Background Colors
  -- ============================================
  bg = "#171b20",           -- editor.background - Main editor background (lowered contrast)
  bg_dark = "#0e1217",      -- sideBar.background - Sidebar, panels, float windows
  bg_light = "#15191e",     -- editor.lineHighlightBackground - Current line, status bar
  bg_highlight = "#1a1e23", -- list.dropBackground - Hover states, drop zones
  bg_visual = "#383c41",    -- editor.selectionBackground - Visual selection
  bg_inactive = "#242931",  -- editor.inactiveSelectionBackground - Inactive selection

  -- ============================================
  -- Foreground Colors
  -- ============================================
  fg = "#b6beca",           -- foreground - Default text
  fg_light = "#dee1e6",     -- activityBar.foreground - Active/highlighted text
  fg_dark = "#485263",      -- activityBar.inactiveForeground - Disabled, inactive
  fg_muted = "#cccccc",     -- list.hoverForeground - Muted text

  -- ============================================
  -- Accent Colors (Syntax Highlighting)
  -- ============================================
  blue = "#70a5eb",         -- Parameters, variables, attributes, links
  sky = "#61afef",          -- Functions, methods
  cyan = "#74bee9",         -- Object properties, bright cyan accents
  teal = "#56b6c2",         -- Operators, support functions, built-ins
  aqua = "#7ddac5",         -- Git modified, debugging state
  green = "#78dba9",        -- Strings, additions, success states
  purple = "#c68aee",       -- Keywords, control flow, git conflicts
  yellow = "#f1cf8a",       -- Classes, types, constants, warnings
  orange = "#e9a180",       -- CSS values, readonly variables, deletions
  red = "#e05f65",          -- Tags (HTML/JSX), errors, deletions

  -- ============================================
  -- Gray Scale
  -- ============================================
  gray = "#7f848e",         -- Comments (will be italic)
  gray_dark = "#485263",    -- Inactive elements, fold controls
  gray_light = "#888888",   -- Bracket match border

  -- ============================================
  -- Personal Overrides (from decay-vscode-overide.json)
  -- ============================================
  cursor = "#f6926a",           -- Orange cursor
  cursor_bg = "#171b20",        -- Cursor background
  line_nr_active = "#f6926a",   -- Orange active line number
  -- ============================================
  -- Git Colors
  -- ============================================
  git_add = "#78dba9",      -- gitDecoration.addedResourceForeground
  git_change = "#f1cf8a",   -- gitDecoration.modifiedResourceForeground
  git_delete = "#e05f65",   -- gitDecoration.deletedResourceForeground
  git_conflict = "#c68aee", -- gitDecoration.conflictingResourceForeground
  git_ignored = "#485263",  -- gitDecoration.ignoredResourceForeground
  git_untracked = "#7ddac5", -- gitDecoration.untrackedResourceForeground
  git_staged_mod = "#f1cf8a", -- gitDecoration.stageModifiedResourceForeground
  git_staged_del = "#e9a180", -- gitDecoration.stageDeletedResourceForeground
  git_submodule = "#70a5eb", -- gitDecoration.submoduleResourceForeground

  -- ============================================
  -- Diff Colors (base colors - blend applied in groups)
  -- ============================================
  diff_add = "#78dba9",     -- diffEditor.insertedTextBackground (20% blend)
  diff_delete = "#e05f65",  -- diffEditor.removedTextBackground (20% blend)
  diff_change = "#7ddac5",  -- Modified line background (20% blend)

  -- ============================================
  -- Diagnostic Colors
  -- ============================================
  error = "#e05f65",        -- editorError.foreground
  warning = "#f1cf8a",      -- editorWarning.foreground
  info = "#70a5eb",         -- editorInfo.foreground
  hint = "#7ddac5",         -- Hint color (aqua variant)

  -- ============================================
  -- Search / Find Colors (base colors - blend applied in groups)
  -- ============================================
  search = "#78dba9",       -- editor.findMatchBackground (56% blend)
  search_highlight = "#413a35", -- editor.findMatchHighlightBackground (33% blend)
  search_selection = "#78dba9", -- editor.selectionHighlightBackground (22% blend)

  -- ============================================
  -- UI Colors
  -- ============================================
  border = "#1a1e23",       -- editorGroup.border
  border_light = "#242931", -- editorHoverWidget.border
  border_active = "#70a5eb", -- tab.activeBorder

  -- ============================================
  -- Terminal Colors (ANSI)
  -- ============================================
  term_black = "#1C252C",
  term_red = "#e05f65",
  term_green = "#78dba9",
  term_yellow = "#f1cf8a",
  term_blue = "#70a5eb",
  term_magenta = "#c68aee",
  term_cyan = "#74bee9",
  term_white = "#dee1e6",
  term_bright_black = "#485263",
  term_bright_red = "#e05f65",
  term_bright_green = "#78dba9",
  term_bright_yellow = "#e9a180",
  term_bright_blue = "#70a5eb",
  term_bright_magenta = "#c68aee",
  term_bright_cyan = "#74bee9",
  term_bright_white = "#b6beca",

  -- ============================================
  -- Special UI Elements (base colors - blend applied in groups)
  -- ============================================
  pmenu_sel = "#7ddac5",    -- editorSuggestWidget.selectedBackground (27% blend)
  pmenu_match = "#78dba9",  -- editorSuggestWidget.highlightForeground
  bracket_match = "#006400", -- editorBracketMatch.background (10% blend)
  indent_guide = "#1a1e23", -- editorIndentGuide.background
  indent_guide_active = "#242931", -- editorIndentGuide.activeBackground
  fold = "#15191e",         -- editor.foldBackground
  whitespace = "#242931",   -- editorWhitespace.foreground
  word_highlight = "#575757", -- editor.wordHighlightBackground (72% blend)
  link = "#70a5eb",         -- textLink.foreground
}

-- Utility function to get a color with fallback
function M.get(name, fallback)
  return M.colors[name] or fallback or M.colors.fg
end

return M