-- Lualine theme for unknown-decay.nvim
-- Auto-discovered when colorscheme is set to "unknown-decay"

local colors = require("unknown-decay").get_colors()

return {
  normal = {
    a = { bg = colors.blue, fg = colors.bg, gui = "bold" },
    b = { bg = colors.bg_highlight, fg = colors.fg },
    c = { bg = colors.bg_light, fg = colors.fg },
  },
  insert = {
    a = { bg = colors.green, fg = colors.bg, gui = "bold" },
    b = { bg = colors.bg_highlight, fg = colors.fg },
    c = { bg = colors.bg_light, fg = colors.fg },
  },
  visual = {
    a = { bg = colors.purple, fg = colors.bg, gui = "bold" },
    b = { bg = colors.bg_highlight, fg = colors.fg },
    c = { bg = colors.bg_light, fg = colors.fg },
  },
  replace = {
    a = { bg = colors.red, fg = colors.bg, gui = "bold" },
    b = { bg = colors.bg_highlight, fg = colors.fg },
    c = { bg = colors.bg_light, fg = colors.fg },
  },
  command = {
    a = { bg = colors.yellow, fg = colors.bg, gui = "bold" },
    b = { bg = colors.bg_highlight, fg = colors.fg },
    c = { bg = colors.bg_light, fg = colors.fg },
  },
  terminal = {
    a = { bg = colors.teal, fg = colors.bg, gui = "bold" },
    b = { bg = colors.bg_highlight, fg = colors.fg },
    c = { bg = colors.bg_dark, fg = colors.fg },
  },
  inactive = {
    a = { bg = colors.bg_light, fg = colors.gray },
    b = { bg = colors.bg_light, fg = colors.gray },
    c = { bg = colors.bg_light, fg = colors.gray },
  },
}
