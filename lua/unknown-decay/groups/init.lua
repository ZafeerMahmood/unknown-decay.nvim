local M = {}

function M.get_all(colors, config)
  local highlights = {}

  -- Load all group modules
  local modules = {
    require("unknown-decay.groups.editor").get(colors, config),
    require("unknown-decay.groups.syntax").get(colors, config),
    require("unknown-decay.groups.treesitter").get(colors, config),
    require("unknown-decay.groups.lsp").get(colors, config),
    require("unknown-decay.groups.plugins").get(colors, config),
    -- Language-specific overrides
    require("unknown-decay.languages.typescript").get(colors, config),
    require("unknown-decay.languages.python").get(colors, config),
    require("unknown-decay.languages.html").get(colors, config),
    require("unknown-decay.languages.css").get(colors, config),
    require("unknown-decay.languages.json").get(colors, config),
  }

  for _, module in ipairs(modules) do
    for group, hl in pairs(module) do
      highlights[group] = hl
    end
  end

  -- Apply user highlight overrides
  local user_highlights = config.get("highlights")
  if user_highlights then
    for group, hl in pairs(user_highlights) do
      highlights[group] = vim.tbl_extend("force", highlights[group] or {}, hl)
    end
  end

  return highlights
end

return M
