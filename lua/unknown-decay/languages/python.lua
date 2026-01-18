-- unknown-decay/languages/python.lua
-- Python specific highlight overrides
-- Mapped from VS Code decay.json tokenColors

local M = {}

function M.get(c, config)
  local italic_keywords = config.is_italic("keywords")
  local italic_comments = config.is_italic("comments")

  return {
    -- ============================================
    -- PYTHON SPECIFIC
    -- ============================================

    -- Regular variables -> c.fg
    ["@variable.python"] = { fg = c.fg },

    -- self keyword (special variable) -> purple
    ["@variable.builtin.python"] = { fg = c.purple },
    ["@variable.builtin.self.python"] = { fg = c.purple },

    -- cls keyword (class methods) -> blue
    ["@variable.builtin.cls.python"] = { fg = c.blue },

    -- Variable members/keys (obj.key, nested.key) -> c.fg_light
    ["@variable.member.python"] = { fg = c.fg_light },

    -- Function Parameters (excluding self/cls) -> teal + italic
    ["@variable.parameter.python"] = { fg = c.teal, italic = true },

    -- Parameter usage inside function body (from odp queries)
    ["@odp.variable.parameter.python"] = { fg = c.teal, italic = true },

    -- ============================================
    -- @odp.* OVERRIDES (prevent links to @odp from causing conflicts)
    -- ============================================
    -- self keyword -> purple
    ["@odp.keyword.python"] = { fg = c.purple },
    -- class keyword -> purple
    ["@odp.keyword.class.python"] = { fg = c.purple },
    -- super and other builtins -> yellow
    ["@odp.function.builtin.python"] = { fg = c.yellow },
    -- ============================================
    -- IMPORT OVERRIDES (custom queries from after/queries/python/highlights.scm)
    -- ============================================
    -- Module paths (django.db, apps.files.utils) -> fg
    ["@module.path.python"] = { fg = c.fg },
    -- Imported classes (PascalCase like IntegrityError) -> yellow
    ["@type.import.python"] = { fg = c.yellow },
    -- Imported functions (snake_case like upload_file_using_lambda) -> blue/sky
    ["@function.import.python"] = { fg = c.sky },
    -- Override @odp.import_module to not interfere (set to fg as fallback)
    ["@odp.import_module.python"] = { fg = c.fg },
    -- Punctuation brackets - NO italic (override @odp link)
    ["@odp.punctuation.bracket.python"] = { fg = c.blue, italic = false },
    ["@odp.punctuation.delimiter.python"] = { fg = c.blue, italic = false },
    ["@odp.punctuation.python"] = { fg = c.blue, italic = false },
    -- Fallback for other odp parameter highlighting
    ["@odp"] = { fg = c.teal, italic = true },

    -- Decorators
    -- meta.function.decorator.python -> #61afef
    ["@function.decorator.python"] = { fg = c.sky },
    ["@attribute.python"] = { fg = c.teal },               -- support.token.decorator -> #56b6c2
    ["@attribute.builtin.python"] = { fg = c.teal },       -- @classmethod, @staticmethod, @property

    -- Built-in types (str, list, dict, Exception, etc.) -> yellow
    ["@type.builtin.python"] = { fg = c.yellow },

    -- Function definitions and calls
    -- entity.name.function -> #61afef
    ["@function.python"] = { fg = c.sky },
    ["@function.call.python"] = { fg = c.sky },
    ["@function.method.python"] = { fg = c.sky },
    ["@function.method.call.python"] = { fg = c.sky },

    -- Built-in functions (len, print, range, super, etc.) -> yellow
    ["@function.builtin.python"] = { fg = c.yellow },

    -- Import keywords (italic per VS Code theme)
    -- keyword.control.import.python -> #c68aee (italic)
    ["@keyword.import.python"] = { fg = c.purple, italic = true },

    -- Control flow keywords (if, for, while, etc.) - italic
    -- keyword.control.flow.python -> #c68aee (italic)
    ["@keyword.python"] = { fg = c.purple, italic = italic_keywords },
    ["@keyword.conditional.python"] = { fg = c.purple, italic = italic_keywords },
    ["@keyword.repeat.python"] = { fg = c.purple, italic = italic_keywords },
    ["@keyword.exception.python"] = { fg = c.purple, italic = italic_keywords },
    ["@keyword.return.python"] = { fg = c.purple },

    -- Logical operators (and, or, not, is, in)
    -- keyword.operator.logical.python -> #c68aee
    ["@keyword.operator.python"] = { fg = c.purple },

    -- def, class, lambda keywords
    ["@keyword.function.python"] = { fg = c.purple },
    ["@keyword.type.python"] = { fg = c.purple },

    -- Class definitions
    -- entity.name.class -> #f1cf8a
    ["@type.python"] = { fg = c.yellow },

    -- Class instantiation calls (EmailField(), MyClass(), etc.) -> yellow
    -- Note: In Python treesitter, @constructor captures class calls, not __init__
    ["@constructor.python"] = { fg = c.yellow },

    -- Dunder/magic methods (__init__, __str__, etc.) -> teal
    -- Custom captures from after/queries/python/highlights.scm
    ["@function.method.dunder.python"] = { fg = c.teal },
    ["@function.method.call.dunder.python"] = { fg = c.teal },
    -- Legacy fallback
    ["@function.method.special.python"] = { fg = c.teal },

    -- Strings
    ["@string.python"] = { fg = c.green },

    -- Docstrings (string.documentation)
    ["@string.documentation.python"] = { fg = c.green },

    -- F-string placeholders
    -- constant.character.format.placeholder.other.python -> #78dba9
    ["@string.special.python"] = { fg = c.green },

    -- F-string brackets {}
    ["@punctuation.special.python"] = { fg = c.red },

    -- Escape sequences
    ["@string.escape.python"] = { fg = c.teal },

    -- Numbers
    ["@number.python"] = { fg = c.red },
    ["@number.float.python"] = { fg = c.red },

    -- Booleans (True, False) -> purple
    ["@boolean.python"] = { fg = c.purple },

    -- None, True, False -> purple
    ["@constant.builtin.python"] = { fg = c.purple },

    -- Constants (SCREAMING_CASE) -> teal, non-italic
    ["@constant.python"] = { fg = c.teal },

    -- Operators
    ["@operator.python"] = { fg = c.fg },

    -- Punctuation
    -- punctuation.separator.period/element/parenthesis.python -> #70a5eb
    ["@punctuation.bracket.python"] = { fg = c.blue },
    ["@punctuation.delimiter.python"] = { fg = c.blue },

    -- Comments (italic)
    ["@comment.python"] = { fg = c.gray, italic = italic_comments },

    -- Properties/Attributes on objects
    ["@property.python"] = { fg = c.cyan },

    -- Exception classes
    ["@type.exception.python"] = { fg = c.yellow },
  }
end

return M