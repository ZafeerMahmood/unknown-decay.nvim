local M = {}

M.colors = {
  -- Backgrounds
  bg = "#171b20",
  bg_dark = "#0e1217",
  bg_light = "#15191e",
  bg_highlight = "#1a1e23",
  bg_visual = "#383c41",
  bg_inactive = "#242931",

  -- Foregrounds
  fg = "#b6beca",
  fg_light = "#dee1e6",
  fg_dark = "#485263",
  fg_muted = "#cccccc",

  -- Syntax
  blue = "#70a5eb",
  sky = "#61afef",
  cyan = "#74bee9",
  teal = "#56b6c2",
  aqua = "#7ddac5",
  green = "#78dba9",
  purple = "#c68aee",
  yellow = "#f1cf8a",
  dark_yellow ="#dad700", 
  orange = "#e9a180",
  red = "#e05f65",

  -- Grays
  gray = "#7f848e",
  gray_dark = "#485263",
  gray_light = "#888888",

  -- Cursor (personal overrides)
  cursor = "#f6926a",
  cursor_bg = "#171b20",
  line_nr_active = "#f6926a",

  -- Git
  git_add = "#78dba9",
  git_change = "#f1cf8a",
  git_delete = "#e05f65",
  git_conflict = "#c68aee",
  git_ignored = "#485263",
  git_untracked = "#7ddac5",
  git_staged_mod = "#f1cf8a",
  git_staged_del = "#e9a180",
  git_submodule = "#70a5eb",

  -- Diff
  diff_add = "#78dba9",
  diff_delete = "#e05f65",
  diff_change = "#7ddac5",
  diff_add_bg = "#1d3d2b",
  diff_delete_bg = "#3d1f22",
  diff_change_bg = "#2a3640",
  diff_text_bg = "#2d5540",

  -- Diagnostics
  error = "#e05f65",
  warning = "#f1cf8a",
  info = "#70a5eb",
  hint = "#7ddac5",

  -- Search
  search = "#78dba9",
  search_highlight = "#413a35",
  search_selection = "#78dba9",

  -- UI
  border = "#1a1e23",
  border_light = "#242931",
  border_active = "#70a5eb",

  -- Terminal (ANSI)
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

  -- Special UI
  pmenu_sel = "#2a4443",
  pmenu_match = "#78dba9",
  bracket_match = "#006400",
  indent_guide = "#1a1e23",
  indent_guide_active = "#242931",
  fold = "#15191e",
  whitespace = "#242931",
  word_highlight = "#575757",
  link = "#70a5eb",
}

function M.get(name, fallback)
  return M.colors[name] or fallback or M.colors.fg
end

return M
