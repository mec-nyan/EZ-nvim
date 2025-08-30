return {
	"catppuccin/nvim",
	name = "catppuccin",
	priority = 1000,
	config = function()
		require "catppuccin".setup {
			flavour = "mocha",
			transparent_background = true,
			float = {
				transparent = true,
				solid = true,
			},
			show_end_of_buffer = false,
			dim_inactive = {
				enabled = false,
				shade = "dark",
				percentage = 2,
			},
			no_bold = true,
			styles = {
				comments = { "italic" },
			},
			default_integrations = true,
			integrations = {
				cmp = true,
				nvimtree = true,
				dap = true,
				dap_ui = true,
				gitsigns = true,
			},
			custom_highlights = function(colors)
				return {
					Pmenu = { bg = colors.mantle },
					NvimTreeNormal = { bg = colors.mantle },
				}
			end
		}

		vim.cmd.colorscheme "catppuccin"
	end
}
