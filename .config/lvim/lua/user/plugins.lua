lvim.plugins = {
	{ 'ellisonleao/gruvbox.nvim' },
	{ 'catppuccin/nvim',
        config = function()
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
        end
    },
	{ 'neovim/nvim-lspconfig' },
    { 
      'nvim-telescope/telescope.nvim',
      config = function()
          require('telescope').setup {
              defaults = {
                  file_ignore_patterns = {
                      'Cargo.lock',
                      '_build'
                  }
              }
          }
      end
    },
	{ 'simrat39/rust-tools.nvim' },
	{
        'ahmedkhalf/project.nvim' ,
        config = function()
            require('project_nvim').setup {
	            manual_mode = true,
            }
        end
    },
    {
        'saecki/crates.nvim',
        tag = 'stable',
        config = function()
            require('crates').setup()
        end,
    }
}
