lvim.format_on_save = true

require 'lspconfig'.elixirls.setup{
  cmd = { "/usr/local/bin/elixir/language-server.sh" };
}

require 'lspconfig'.zls.setup{}
vim.cmd.let "g:zig_fmt_autosave = 0"
