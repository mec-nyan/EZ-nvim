return {
	'nvim-telescope/telescope.nvim',
	tag = '0.1.8',
	-- or                              , branch = '0.1.x',
	dependencies = { 'nvim-lua/plenary.nvim' },
	config = function()
		local tl = require 'telescope'
		tl.setup {
			--[[ This is useful with kitty, but not needed anywhere else.
			defaults = {
				borderchars = {
					prompt = { "━", "┃", "━", "┃", "╭", "╮", "╯", "╰" },
					results = { "━", "┃", "━", "┃", "╭", "╮", "╯", "╰" },
					preview = { "━", "┃", "━", "┃", "╭", "╮", "╯", "╰" },
				}
			},
			--]]
			pickers = {
				find_files = {
					theme = 'ivy',
				},
				live_grep = {
					theme = 'ivy',
				},
			}
		}
		pcall(tl.load_extension, 'fzf')
	end
}
