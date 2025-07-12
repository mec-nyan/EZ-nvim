return {
	{
		'windwp/nvim-autopairs',
		event = "InsertEnter",
		opts = {
			enable_bracket_in_quote = false,
		},
	},
	{
		'windwp/nvim-ts-autotag',
		lazy = false,
		config = function ()
			require"nvim-ts-autotag".setup()
		end
	}
}
