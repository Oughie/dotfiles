local rt = require('rust-tools')

rt.setup {
	server = {
		on_attach = function(_, bufnr)
			vim.keymap.set('n', '<Leader>a', rt.code_action_group.code_action_group, { buffer = bufnr })
		end,
	},
}
