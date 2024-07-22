lvim.plugins = {
	{ 'catppuccin/nvim' },
	{ 'ellisonleao/gruvbox.nvim' },
	{ 'neovim/nvim-lspconfig' },
    { 
      'nvim-telescope/telescope.nvim',
      config = function()
          require('telescope').setup {
              defaults = {
                  file_ignore_patterns = {
                      'Cargo.lock',
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
        'L3MON4D3/LuaSnip',
        tag = "v2.*",
        build = "make install_jsregexp"
    }
}
