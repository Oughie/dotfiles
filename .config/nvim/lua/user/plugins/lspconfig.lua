return {
    'neovim/nvim-lspconfig',
    config = function()
        local lspconfig = require 'lspconfig'

        lspconfig.lua_ls.setup {
            settings = {
                Lua = {
                    diagnostics = {
                        globals = { 'vim' },
                    },
                },
            },
        }
        lspconfig.wgsl_analyzer.setup {}
        lspconfig.clangd.setup {}
        lspconfig.jdtls.setup {}
        lspconfig.elixirls.setup {
            cmd = { '/usr/local/bin/elixir/language-server.sh' },
        }

        lspconfig.zls.setup {}
        vim.cmd.let 'g:zig_fmt_autosave = 0'

        vim.api.nvim_create_autocmd({ 'BufNewFile', 'BufRead' }, {
            pattern = '*.wgsl',
            callback = function()
                vim.bo.filetype = 'wgsl'
            end,
        })
    end,
}
