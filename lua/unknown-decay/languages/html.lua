-- unknown-decay/languages/html.lua
-- HTML specific highlight overrides
-- Mapped from VS Code decay.json tokenColors

local M = {}

function M.get(c, config)
  return {
    -- ============================================
    -- HTML SPECIFIC
    -- ============================================

    -- Tag names (<div>, <p>, <span>, etc.)
    -- entity.name.tag -> #e05f65
    ["@tag.html"] = { fg = c.red },
    ["@tag.builtin.html"] = { fg = c.red },

    -- Tag delimiters (<, >, </, />)
    ["@tag.delimiter.html"] = { fg = c.fg },

    -- Attribute names (class, id, href, src, etc.)
    -- entity.other.attribute-name -> #70a5eb
    ["@tag.attribute.html"] = { fg = c.blue },

    -- ID attribute (special - sky blue)
    -- entity.other.attribute-name.id -> #61afef
    ["@tag.attribute.id.html"] = { fg = c.sky },

    -- Attribute values (strings)
    ["@string.html"] = { fg = c.green },

    -- HTML entities (&nbsp;, &amp;, &#123;, etc.)
    -- constant.character.entity -> #70a5eb
    ["@character.special.html"] = { fg = c.blue },

    -- Comments
    ["@comment.html"] = { fg = c.gray, italic = config.is_italic("comments") },

    -- DOCTYPE declaration
    ["@constant.html"] = { fg = c.blue },
    ["@keyword.html"] = { fg = c.purple },

    -- Embedded content (script, style)
    ["@none.html"] = {},

    -- ============================================
    -- XML SPECIFIC (Similar to HTML)
    -- ============================================

    ["@tag.xml"] = { fg = c.red },
    ["@tag.delimiter.xml"] = { fg = c.fg },
    ["@tag.attribute.xml"] = { fg = c.blue },
    ["@string.xml"] = { fg = c.green },
    ["@comment.xml"] = { fg = c.gray, italic = config.is_italic("comments") },

    -- ============================================
    -- SVG SPECIFIC
    -- ============================================

    ["@tag.svg"] = { fg = c.red },
    ["@tag.attribute.svg"] = { fg = c.blue },

    -- ============================================
    -- EMBEDDED LANGUAGES
    -- ============================================

    -- Script tags content uses JavaScript highlighting
    -- Style tags content uses CSS highlighting
    -- These are handled by Treesitter injection
  }
end

return M