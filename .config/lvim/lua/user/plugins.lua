lvim.plugins = {
	{ 'catppuccin/nvim' },
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
