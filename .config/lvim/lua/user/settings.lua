lvim.format_on_save = true
lvim.colorscheme = 'catppuccin'
lvim.builtin.lualine.style = 'default'

local lspconfig = require 'lspconfig'

lspconfig.elixirls.setup{
  cmd = { "/usr/local/bin/elixir/language-server.sh" };
}

lspconfig.zls.setup{}
vim.cmd.let "g:zig_fmt_autosave = 0"

vim.api.nvim_create_autocmd({ "BufNewFile", "BufRead" }, {
  pattern = "*.wgsl",
  callback = function()
    vim.bo.filetype = "wgsl"
  end,
})

lspconfig.wgsl_analyzer.setup{}
lspconfig.clangd.setup{}
