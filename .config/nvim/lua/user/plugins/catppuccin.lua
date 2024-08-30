return {
    'catppuccin/nvim',
    name = 'catppuccin',
    priority = 99,
    config = function()
        require('catppuccin').setup {
            custom_highlights = function(colors)
                return {
                    Keyword = { bold = true },
                    String = { italic = true },
                    Character = { italic = true },
                    Conditional = { bold = true },
                    Boolean = { bold = true, italic = true },
                    Macro = { italic = true },
                    CursorLineNr = { bold = true },
                    Constant = { bold = true },
                    Label = { bold = true },
                    Repeat = { bold = true },
                    Error = { undercurl = true },
                    ['@keyword.function'] = { bold = true, fg = colors.mauve },
                    ['@keyword.return'] = { bold = true, fg = colors.mauve },
                    ['@property.lua'] = { italic = true },
                    ['@keyword.import.rust'] = { bold = true, fg = colors.mauve },
                    ['@function.macro.rust'] = { bold = true, italic = true, fg = colors.teal },
                    ['@function.builtin.lua'] = { bold = true, fg = colors.peach },
                    ['@lsp.type.const.rust'] = { bold = true, fg = colors.peach },
                }
            end,
        }
        vim.cmd.colorscheme 'catppuccin'
    end,
}
