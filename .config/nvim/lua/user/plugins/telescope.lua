return {
    'nvim-telescope/telescope.nvim',
    tag = '0.1.8',
    config = function()
        require('telescope').setup {
            defaults = {
                file_ignore_patterns = {
                    'Cargo.lock',
                },
            },
        }
    end,
    dependencies = { 'nvim-lua/plenary.nvim' },
}