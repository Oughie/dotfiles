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
		}
	end,
}

vim.cmd.colorscheme 'catppuccin'
