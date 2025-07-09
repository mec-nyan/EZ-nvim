return {
	'nvim-tree/nvim-tree.lua',
	version = '*',
	lazy = false,
	config = function ()
		require('nvim-tree').setup {
			view = {
				width = 30,
				signcolumn = 'yes',
			},
			diagnostics = {
				enable = true,
				show_on_dirs = true,
			},
		}
	end
}
