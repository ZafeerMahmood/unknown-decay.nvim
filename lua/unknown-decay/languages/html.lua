local M = {}

function M.get(c, config)
  return {
    -- HTML
    ["@tag.html"] = { fg = c.red },
    ["@tag.builtin.html"] = { fg = c.red },
    ["@tag.delimiter.html"] = { fg = c.fg },
    ["@tag.attribute.html"] = { fg = c.blue },
    ["@tag.attribute.id.html"] = { fg = c.sky },
    ["@string.html"] = { fg = c.green },
    ["@character.special.html"] = { fg = c.blue },
    ["@comment.html"] = { fg = c.gray, italic = config.is_italic("comments") },
    ["@constant.html"] = { fg = c.blue },
    ["@keyword.html"] = { fg = c.purple },
    ["@none.html"] = {},

    -- XML
    ["@tag.xml"] = { fg = c.red },
    ["@tag.delimiter.xml"] = { fg = c.fg },
    ["@tag.attribute.xml"] = { fg = c.blue },
    ["@string.xml"] = { fg = c.green },
    ["@comment.xml"] = { fg = c.gray, italic = config.is_italic("comments") },

    -- SVG
    ["@tag.svg"] = { fg = c.red },
    ["@tag.attribute.svg"] = { fg = c.blue },
  }
end

return M
