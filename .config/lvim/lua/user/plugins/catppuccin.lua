require 'catppuccin' .setup {
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
            ['@keyword.import.rust'] = { bold = true, fg = colors.mauve },
            ['@keyword.function.rust'] = { bold = true, fg = colors.mauve },
            ['@function.macro.rust'] = { bold = true, italic = true, fg = colors.teal }
		}
	end,
}
