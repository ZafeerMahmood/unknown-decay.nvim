-- unknown-decay/config.lua
-- Configuration options for the unknown-decay colorscheme

local M = {}

-- Default configuration
M.defaults = {
  -- Transparent background (set true to disable background color)
  transparent = false,

  -- Italic styles for different syntax elements
  italics = {
    comments = true,      -- Italic comments
    keywords = false,     -- Italic keywords (if, for, while, etc.)
    parameters = true,    -- Italic function parameters
    strings = false,      -- Italic strings
    variables = false,    -- Italic variables
  },

  -- Enable terminal colors
  terminal_colors = true,

  -- Override specific colors
  -- Example: { bg = "#000000", fg = "#ffffff" }
  colors = {},

  -- Override specific highlight groups
  -- Example: { Normal = { fg = "#ffffff", bg = "#000000" } }
  highlights = {},
}

-- Current configuration (merged with user options)
M.options = {}

-- Setup function to merge user options with defaults
function M.setup(opts)
  M.options = vim.tbl_deep_extend("force", {}, M.defaults, opts or {})
end

-- Get a configuration option
function M.get(key)
  if M.options[key] ~= nil then
    return M.options[key]
  end
  return M.defaults[key]
end

-- Check if italic is enabled for a specific type
function M.is_italic(type)
  local italics = M.get("italics")
  if italics and italics[type] ~= nil then
    return italics[type]
  end
  return M.defaults.italics[type] or false
end

-- Check if transparent mode is enabled
function M.is_transparent()
  return M.get("transparent") == true
end

-- Get color override or nil
function M.get_color(name)
  local colors = M.get("colors")
  return colors and colors[name]
end

-- Get highlight override or nil
function M.get_highlight(name)
  local highlights = M.get("highlights")
  return highlights and highlights[name]
end

-- Initialize with defaults
M.setup({})

return M