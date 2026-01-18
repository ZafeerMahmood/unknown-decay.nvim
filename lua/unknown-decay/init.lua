-- unknown-decay/init.lua
-- Main entry point for the unknown-decay colorscheme
-- A 1:1 port of VS Code Dark Decay Custom theme

local M = {}

-- Re-export config for external access
M.config = require("unknown-decay.config")

-- Setup function - call before loading the colorscheme
function M.setup(opts)
  M.config.setup(opts)
end

-- Load the colorscheme
function M.load()
  -- Clear existing highlights
  if vim.g.colors_name then
    vim.cmd("hi clear")
  end

  -- Reset syntax highlighting
  if vim.fn.exists("syntax_on") then
    vim.cmd("syntax reset")
  end

  -- Set colorscheme metadata
  vim.g.colors_name = "unknown-decay"
  vim.o.termguicolors = true
  vim.o.background = "dark"

  -- Load color palette
  local palette = require("unknown-decay.palette")
  local colors = palette.colors

  -- Apply user color overrides
  local user_colors = M.config.get("colors")
  if user_colors then
    colors = vim.tbl_extend("force", colors, user_colors)
  end

  -- Get all highlight groups
  local groups = require("unknown-decay.groups")
  local highlights = groups.get_all(colors, M.config)

  -- Apply all highlights
  for group, settings in pairs(highlights) do
    -- Handle 'link' specially
    if settings.link then
      vim.api.nvim_set_hl(0, group, { link = settings.link })
    else
      vim.api.nvim_set_hl(0, group, settings)
    end
  end

  -- Set terminal colors if enabled
  if M.config.get("terminal_colors") then
    M.set_terminal_colors(colors)
  end
end

-- Set terminal colors (ANSI colors for :terminal)
function M.set_terminal_colors(c)
  vim.g.terminal_color_0 = c.term_black           -- Black
  vim.g.terminal_color_1 = c.term_red             -- Red
  vim.g.terminal_color_2 = c.term_green           -- Green
  vim.g.terminal_color_3 = c.term_yellow          -- Yellow
  vim.g.terminal_color_4 = c.term_blue            -- Blue
  vim.g.terminal_color_5 = c.term_magenta         -- Magenta
  vim.g.terminal_color_6 = c.term_cyan            -- Cyan
  vim.g.terminal_color_7 = c.term_white           -- White

  vim.g.terminal_color_8 = c.term_bright_black    -- Bright Black
  vim.g.terminal_color_9 = c.term_bright_red      -- Bright Red
  vim.g.terminal_color_10 = c.term_bright_green   -- Bright Green
  vim.g.terminal_color_11 = c.term_bright_yellow  -- Bright Yellow
  vim.g.terminal_color_12 = c.term_bright_blue    -- Bright Blue
  vim.g.terminal_color_13 = c.term_bright_magenta -- Bright Magenta
  vim.g.terminal_color_14 = c.term_bright_cyan    -- Bright Cyan
  vim.g.terminal_color_15 = c.term_bright_white   -- Bright White
end

-- Get the color palette (for external use)
function M.get_colors()
  return require("unknown-decay.palette").colors
end

-- Utility: Reload the colorscheme (useful during development)
function M.reload()
  -- Clear cached modules
  for name, _ in pairs(package.loaded) do
    if name:match("^unknown%-decay") then
      package.loaded[name] = nil
    end
  end

  -- Reload and apply
  M.config = require("unknown-decay.config")
  M.load()
end

return M