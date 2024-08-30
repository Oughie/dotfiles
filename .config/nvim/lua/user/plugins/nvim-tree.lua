return {
    'nvim-tree/nvim-tree.lua',
    version = '*',
    lazy = false,
    dependencies = {
        'nvim-tree/nvim-web-devicons',
    },
    config = function()
        require('nvim-tree').setup {
            filters = {
                custom = { '*.git' },
            },
            update_focused_file = {
                enable = true,
                update_root = true,
            },
            view = {
                preserve_window_proportions = true,
            },
            sync_root_with_cwd = true,
            respect_buf_cwd = true,
        }
    end,
}
