-- unknown-decay/languages/css.lua
-- CSS/SCSS specific highlight overrides
-- Mapped from VS Code decay.json tokenColors

local M = {}

function M.get(c, config)
  return {
    -- ============================================
    -- CSS SPECIFIC
    -- ============================================

    -- Tag selectors (div, p, body, html, etc.)
    -- meta.selector -> #e05f65
    ["@tag.css"] = { fg = c.red },

    -- Class selectors (.class-name)
    -- entity.other.attribute-name.class.css -> #e9a180
    ["@type.css"] = { fg = c.orange },

    -- ID selectors (#id-name)
    -- entity.other.attribute-name.id -> #61afef
    ["@tag.attribute.css"] = { fg = c.sky },

    -- Pseudo-elements (::before, ::after) and Pseudo-classes (:hover, :focus)
    -- entity.other.attribute-name.pseudo-element/class -> #56b6c2
    ["@attribute.css"] = { fg = c.teal },

    -- Property names (color, background, margin, etc.)
    -- support.type.property-name.css -> #b6beca (but teal for vendored)
    ["@property.css"] = { fg = c.teal },

    -- Vendored property names (-webkit-, -moz-, etc.)
    -- support.type.vendored.property-name.css -> #56b6c2
    ["@property.vendored.css"] = { fg = c.teal },

    -- Property values
    -- support.constant.property-value.css -> #e9a180
    ["@constant.css"] = { fg = c.orange },

    -- Color names (red, blue, transparent, inherit, etc.)
    -- support.constant.color.w3c-standard-color-name.css -> #e9a180
    ["@constant.builtin.css"] = { fg = c.orange },

    -- Numeric values
    -- constant.numeric -> #e05f65
    ["@number.css"] = { fg = c.blue },  -- Units get blue in decay

    -- Units (px, em, rem, %, etc.)
    -- keyword.other.unit -> #70a5eb
    ["@keyword.css"] = { fg = c.blue },

    -- Operators
    -- keyword.operator.css -> #56b6c2
    ["@operator.css"] = { fg = c.teal },

    -- Strings (font names, URLs, etc.)
    ["@string.css"] = { fg = c.green },

    -- Functions (rgb(), url(), calc(), var(), etc.)
    ["@function.css"] = { fg = c.sky },
    ["@function.builtin.css"] = { fg = c.teal },

    -- Comments
    ["@comment.css"] = { fg = c.gray, italic = config.is_italic("comments") },

    -- Punctuation (colons, semicolons, commas)
    ["@punctuation.delimiter.css"] = { fg = c.fg },

    -- Brackets ({}, [])
    ["@punctuation.bracket.css"] = { fg = c.fg },

    -- At-rules (@media, @keyframes, @import, etc.)
    -- keyword.control.at-rule -> #c68aee
    ["@keyword.directive.css"] = { fg = c.purple },

    -- Important keyword
    ["@keyword.modifier.css"] = { fg = c.red },

    -- ============================================
    -- SCSS SPECIFIC
    -- ============================================

    -- SCSS variables ($variable-name)
    -- variable.css -> #70a5eb
    ["@variable.scss"] = { fg = c.blue },

    -- SCSS mixins (@mixin, @include)
    ["@keyword.directive.scss"] = { fg = c.purple },
    ["@function.scss"] = { fg = c.sky },

    -- SCSS nesting (&)
    ["@character.special.scss"] = { fg = c.red },

    -- Selectors in SCSS
    -- selector.sass -> #70a5eb
    ["@type.scss"] = { fg = c.orange },
    ["@tag.scss"] = { fg = c.red },

    -- SCSS interpolation #{}
    ["@punctuation.special.scss"] = { fg = c.red },

    -- Property names
    ["@property.scss"] = { fg = c.teal },

    -- Property values
    ["@constant.scss"] = { fg = c.orange },

    -- Numbers and units
    ["@number.scss"] = { fg = c.blue },

    -- Strings
    ["@string.scss"] = { fg = c.green },

    -- Comments
    ["@comment.scss"] = { fg = c.gray, italic = config.is_italic("comments") },

    -- Operators
    ["@operator.scss"] = { fg = c.teal },

    -- ============================================
    -- LESS SPECIFIC (Similar to SCSS)
    -- ============================================

    ["@variable.less"] = { fg = c.blue },
    ["@type.less"] = { fg = c.orange },
    ["@tag.less"] = { fg = c.red },
    ["@property.less"] = { fg = c.teal },
    ["@constant.less"] = { fg = c.orange },
    ["@number.less"] = { fg = c.blue },
    ["@string.less"] = { fg = c.green },

    -- ============================================
    -- VIM SYNTAX GROUPS (for non-treesitter fallback)
    -- ============================================

    -- CSS At-rules (@tailwind, @apply, @media, etc.) -> purple
    cssAtRule = { fg = c.purple },
    cssAtRuleLogical = { fg = c.purple },
    cssTailwind = { fg = c.purple },
    cssApply = { fg = c.purple },

    -- Pseudo-classes (:hover, :focus, etc.) -> orange
    cssPseudoClass = { fg = c.orange },
    cssPseudoClassId = { fg = c.orange },
    cssPseudoClassFn = { fg = c.orange },

    -- Vendor prefixes (-webkit-, -moz-, etc.) -> teal
    cssVendor = { fg = c.teal },

    -- CSS Property names -> yellow
    cssBackgroundProp = { fg = c.yellow },
    cssFontProp = { fg = c.yellow },
    cssColorProp = { fg = c.yellow },
    cssBoxProp = { fg = c.yellow },
    cssTextProp = { fg = c.yellow },
    cssPositioningProp = { fg = c.yellow },
    cssBorderProp = { fg = c.yellow },
    cssFlexibleBoxProp = { fg = c.yellow },
    cssGridProp = { fg = c.yellow },
    cssTransitionProp = { fg = c.yellow },
    cssAnimationProp = { fg = c.yellow },
    cssTransformProp = { fg = c.yellow },
    cssUIProp = { fg = c.yellow },
    cssMultiColumnProp = { fg = c.yellow },
    cssPagedMediaProp = { fg = c.yellow },
    cssDimensionProp = { fg = c.yellow },
    cssListProp = { fg = c.yellow },
    cssTableProp = { fg = c.yellow },
    cssContentForPagedMediaProp = { fg = c.yellow },
    cssGeneratedContentProp = { fg = c.yellow },
    cssPrintProp = { fg = c.yellow },

    -- CSS Attribute values -> orange
    cssFlexibleBoxAttr = { fg = c.orange },
    cssGridAttr = { fg = c.orange },
    cssBackgroundAttr = { fg = c.orange },
    cssFontAttr = { fg = c.orange },
    cssColorAttr = { fg = c.orange },
    cssBoxAttr = { fg = c.orange },
    cssTextAttr = { fg = c.orange },
    cssPositioningAttr = { fg = c.orange },
    cssBorderAttr = { fg = c.orange },
    cssTransitionAttr = { fg = c.orange },
    cssAnimationAttr = { fg = c.orange },
    cssTransformAttr = { fg = c.orange },
    cssUIAttr = { fg = c.orange },
    cssCommonAttr = { fg = c.orange },

    -- SASS/SCSS specific
    sassDefinition = { fg = c.orange },
    sassProperty = { fg = c.yellow },
    sassCssAttribute = { fg = c.orange },
    sassPseudoClass = { fg = c.orange },
    sassInclude = { fg = c.purple },  -- @include
    sassMixin = { fg = c.purple },  -- @mixin
    sassMixinName = { fg = c.sky },
    sassExtend = { fg = c.purple },  -- @extend
    sassFunction = { fg = c.purple },  -- @function
    sassReturn = { fg = c.purple },  -- @return
    sassControl = { fg = c.purple },  -- @if, @else, @for, @each, @while
    sassFor = { fg = c.purple },
    sassVariable = { fg = c.blue },
    sassSelectorOp = { fg = c.teal },
    sassSelectorChar = { fg = c.red },  -- & nesting
    sassAmpersand = { fg = c.red },
    sassClass = { fg = c.orange },
    sassId = { fg = c.sky },
    sassPlaceholder = { fg = c.orange },
  }
end

return M