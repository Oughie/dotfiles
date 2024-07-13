lvim.keys.normal_mode['<Tab>'] = ':bnext<cr>'
lvim.keys.normal_mode['<S-Tab>'] = ':bprevious<cr>'
lvim.keys.normal_mode['ß'] = ':horizontal resize +1<cr>'
lvim.keys.normal_mode['ü'] = ':horizontal resize -1<cr>'
lvim.keys.normal_mode['ö'] = ':vertical resize +1<cr>'
lvim.keys.normal_mode['ä'] = ':vertical resize -1<cr>'
lvim.keys.normal_mode['<Leader>th'] = ':Telescope colorscheme<cr>'
lvim.keys.normal_mode['gD'] = ':lua vim.lsp.buf.declaration()<cr>'
lvim.keys.normal_mode['gd'] = ':lua vim.lsp.buf.definition()<cr>'

local cmp_mapping = require 'cmp.config.mapping'
local cmp = require('lvim.utils.modules').require_on_index 'cmp'

lvim.builtin.cmp.mapping['<Up>'] = cmp_mapping {
	i = function(fallback)
		if cmp.visible() then
			cmp.close()
		end
		fallback()
	end,
}

lvim.builtin.cmp.mapping['<Down>'] = cmp_mapping {
	i = function(fallback)
		if cmp.visible() then
			cmp.close()
		end
		fallback()
	end,
}
