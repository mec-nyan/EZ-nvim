return {
	'akinsho/toggleterm.nvim',
	version = "*",
	opts = {
		open_mapping = [[<c-\>]],
		hide_numbers = true,
		shade_terminals = false,
		direction = 'horizontal',
		size = 16,
		highlights = {
			Normal = {
				guibg = '#181825',
			},
			NormalFloat = {
				guibg = '#181825',
			},
			FloatBorder = {
				guibg = '#181825',
				-- guifg = '...',
			}
		}
	}
}
