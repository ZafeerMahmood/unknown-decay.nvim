-- unknown-decay/groups/init.lua
-- Aggregates all highlight groups from submodules

local M = {}

function M.get_all(colors, config)
  local highlights = {}

  -- Load all group modules
  local editor = require("unknown-decay.groups.editor")
  local syntax = require("unknown-decay.groups.syntax")
  local treesitter = require("unknown-decay.groups.treesitter")
  local lsp = require("unknown-decay.groups.lsp")
  local plugins = require("unknown-decay.groups.plugins")

  -- Load language-specific modules
  local typescript = require("unknown-decay.languages.typescript")
  local python = require("unknown-decay.languages.python")
  local html = require("unknown-decay.languages.html")
  local css = require("unknown-decay.languages.css")
  local json = require("unknown-decay.languages.json")

  -- Merge all highlights (order matters - later ones override earlier)
  local modules = {
    editor.get(colors, config),
    syntax.get(colors, config),
    treesitter.get(colors, config),
    lsp.get(colors, config),
    plugins.get(colors, config),
    -- Language-specific overrides (highest priority)
    typescript.get(colors, config),
    python.get(colors, config),
    html.get(colors, config),
    css.get(colors, config),
    json.get(colors, config),
  }

  for _, module in ipairs(modules) do
    for group, hl in pairs(module) do
      highlights[group] = hl
    end
  end

  -- Apply user highlight overrides from config
  local user_highlights = config.get("highlights")
  if user_highlights then
    for group, hl in pairs(user_highlights) do
      highlights[group] = vim.tbl_extend("force", highlights[group] or {}, hl)
    end
  end

  return highlights
end

return M