lvim.plugins = {
	{ 'catppuccin/nvim' },
	{ 'ellisonleao/gruvbox.nvim' },
	{ 'neovim/nvim-lspconfig' },
    { 'nvim-telescope/telescope.nvim' },
	{ 'simrat39/rust-tools.nvim' },
	{ 'ahmedkhalf/project.nvim' ,
        config = function()
            require('project_nvim').setup {
	            manual_mode = true,
            }
        end
    },
}
