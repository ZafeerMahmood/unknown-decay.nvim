local M = {}

M.defaults = {
  transparent = false,
  italics = {
    comments = true,
    keywords = false,
    parameters = true,
    strings = false,
    variables = false,
  },
  terminal_colors = true,
  colors = {},
  highlights = {},
}

M.options = {}

function M.setup(opts)
  M.options = vim.tbl_deep_extend("force", {}, M.defaults, opts or {})
end

function M.get(key)
  if M.options[key] ~= nil then
    return M.options[key]
  end
  return M.defaults[key]
end

function M.is_italic(type)
  local italics = M.get("italics")
  if italics and italics[type] ~= nil then
    return italics[type]
  end
  return M.defaults.italics[type] or false
end

function M.is_transparent()
  return M.get("transparent") == true
end

function M.get_color(name)
  local colors = M.get("colors")
  return colors and colors[name]
end

function M.get_highlight(name)
  local highlights = M.get("highlights")
  return highlights and highlights[name]
end

M.setup({})

return M
