# unknown-decay.nvim

A dark Neovim colorscheme - 1:1 port of VS Code Dark Decay Custom theme.

![unknown-decay.nvim](https://img.shields.io/badge/Neovim-0.9%2B-green?style=flat-square&logo=neovim)

## Features

- Carefully crafted colors ported from VS Code Dark Decay theme
- Full Treesitter support with 200+ highlight captures
- LSP semantic token highlighting
- Support for popular plugins (Telescope, Neo-tree, Gitsigns, etc.)
- Language-specific overrides for TypeScript, Python, HTML, CSS, JSON
- Customizable with transparent background and italic options

## Requirements

- Neovim >= 0.9.0
- `termguicolors` enabled
- A terminal that supports true colors

## Installation

### lazy.nvim

```lua
{
  "ZafeerMahmood/unknown-decay.nvim",
  lazy = false,
  priority = 1000,
  config = function()
    require("unknown-decay").setup({
      transparent = false,
      italics = {
        comments = true,
        keywords = false,
        parameters = true,
      },
    })
    vim.cmd.colorscheme("unknown-decay")
  end,
}
```

### packer.nvim

```lua
use {
  "ZafeerMahmood/unknown-decay.nvim",
  config = function()
    require("unknown-decay").setup()
    vim.cmd.colorscheme("unknown-decay")
  end,
}
```

## Configuration

```lua
require("unknown-decay").setup({
  -- Transparent background
  transparent = false,

  -- Italic styles
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
  colors = {
    -- bg = "#000000",
    -- fg = "#ffffff",
  },

  -- Override specific highlight groups
  highlights = {
    -- Normal = { fg = "#ffffff", bg = "#000000" },
  },
})
```

## Color Palette

| Color   | Hex       | Usage                                    |
|---------|-----------|------------------------------------------|
| bg      | `#171b20` | Editor background                        |
| fg      | `#b6beca` | Default text                             |
| blue    | `#70a5eb` | Parameters, variables, links             |
| sky     | `#61afef` | Functions, methods                       |
| cyan    | `#74bee9` | Object properties                        |
| teal    | `#56b6c2` | Operators, built-ins                     |
| green   | `#78dba9` | Strings, success states                  |
| purple  | `#c68aee` | Keywords, control flow                   |
| yellow  | `#f1cf8a` | Classes, types, constants                |
| orange  | `#e9a180` | CSS values, readonly variables           |
| red     | `#e05f65` | HTML tags, errors                        |

## Supported Plugins

- Telescope
- Neo-tree
- Gitsigns
- Which-key
- Mini.nvim
- Blink.cmp / nvim-cmp
- Indent-blankline
- Flash.nvim
- Trouble.nvim
- Todo-comments
- Lazy.nvim
- Mason
- Bufferline
- Lualine
- And more...

## Utilities

### Reload colorscheme (during development)

```lua
require("unknown-decay").reload()
```

### Get color palette

```lua
local colors = require("unknown-decay").get_colors()
print(colors.blue) -- #70a5eb
```

## Credits

- Based on [Decay Theme](https://github.com/decaycs) for VS Code
- Inspired by the Neovim community's colorscheme ecosystem

## License

MIT License - see [LICENSE](LICENSE) for details