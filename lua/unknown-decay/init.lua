local M = {}

M.config = require("unknown-decay.config")

function M.setup(opts)
  M.config.setup(opts)
end

function M.load()
  if vim.g.colors_name then
    vim.cmd("hi clear")
  end

  if vim.fn.exists("syntax_on") then
    vim.cmd("syntax reset")
  end

  vim.g.colors_name = "unknown-decay"
  vim.o.termguicolors = true
  vim.o.background = "dark"

  local palette = require("unknown-decay.palette")
  local colors = palette.colors

  local user_colors = M.config.get("colors")
  if user_colors then
    colors = vim.tbl_extend("force", colors, user_colors)
  end

  local groups = require("unknown-decay.groups")
  local highlights = groups.get_all(colors, M.config)

  for group, settings in pairs(highlights) do
    if settings.link then
      vim.api.nvim_set_hl(0, group, { link = settings.link })
    else
      vim.api.nvim_set_hl(0, group, settings)
    end
  end

  if M.config.get("terminal_colors") then
    M.set_terminal_colors(colors)
  end
end

function M.set_terminal_colors(c)
  vim.g.terminal_color_0 = c.term_black
  vim.g.terminal_color_1 = c.term_red
  vim.g.terminal_color_2 = c.term_green
  vim.g.terminal_color_3 = c.term_yellow
  vim.g.terminal_color_4 = c.term_blue
  vim.g.terminal_color_5 = c.term_magenta
  vim.g.terminal_color_6 = c.term_cyan
  vim.g.terminal_color_7 = c.term_white
  vim.g.terminal_color_8 = c.term_bright_black
  vim.g.terminal_color_9 = c.term_bright_red
  vim.g.terminal_color_10 = c.term_bright_green
  vim.g.terminal_color_11 = c.term_bright_yellow
  vim.g.terminal_color_12 = c.term_bright_blue
  vim.g.terminal_color_13 = c.term_bright_magenta
  vim.g.terminal_color_14 = c.term_bright_cyan
  vim.g.terminal_color_15 = c.term_bright_white
end

function M.get_colors()
  return require("unknown-decay.palette").colors
end

function M.reload()
  for name, _ in pairs(package.loaded) do
    if name:match("^unknown%-decay") then
      package.loaded[name] = nil
    end
  end
  M.config = require("unknown-decay.config")
  M.load()
end

return M
