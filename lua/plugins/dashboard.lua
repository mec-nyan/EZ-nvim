return {
	'nvimdev/dashboard-nvim',
	event = 'VimEnter',
	config = function()
		require "dashboard".setup {
			theme = 'doom',
			hide = {
				statusline = false,
			},
			config = {
				header = {
					"",
					"",
					"",
					" 󰋑   n   e   o   v   i   m    󰋑 ",
					"",
					"",
					' ⣇⣿⠘⣿⣿⣿⡿⡿⣟⣟⢟⢟⢝⠵⡝⣿⡿⢂⣼⣿⣷⣌⠩⡫⡻⣝⠹⢿⣿⣷ ',
					' ⡆⣿⣆⠱⣝⡵⣝⢅⠙⣿⢕⢕⢕⢕⢝⣥⢒⠅⣿⣿⣿⡿⣳⣌⠪⡪⣡⢑⢝⣇ ',
					' ⡆⣿⣿⣦⠹⣳⣳⣕⢅⠈⢗⢕⢕⢕⢕⢕⢈⢆⠟⠋⠉⠁⠉⠉⠁⠈⠼⢐⢕⢽ ',
					' ⡗⢰⣶⣶⣦⣝⢝⢕⢕⠅⡆⢕⢕⢕⢕⢕⣴⠏⣠⡶⠛⡉⡉⡛⢶⣦⡀⠐⣕⢕ ',
					' ⡝⡄⢻⢟⣿⣿⣷⣕⣕⣅⣿⣔⣕⣵⣵⣿⣿⢠⣿⢠⣮⡈⣌⠨⠅⠹⣷⡀⢱⢕ ',
					' ⡝⡵⠟⠈⢀⣀⣀⡀⠉⢿⣿⣿⣿⣿⣿⣿⣿⣼⣿⢈⡋⠴⢿⡟⣡⡇⣿⡇⡀⢕ ',
					' ⡝⠁⣠⣾⠟⡉⡉⡉⠻⣦⣻⣿⣿⣿⣿⣿⣿⣿⣿⣧⠸⣿⣦⣥⣿⡇⡿⣰⢗⢄ ',
					' ⠁⢰⣿⡏⣴⣌⠈⣌⠡⠈⢻⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣬⣉⣉⣁⣄⢖⢕⢕⢕ ',
					' ⡀⢻⣿⡇⢙⠁⠴⢿⡟⣡⡆⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣷⣵⣵⣿ ',
					' ⡻⣄⣻⣿⣌⠘⢿⣷⣥⣿⠇⣿⣿⣿⣿⣿⣿⠛⠻⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿ ',
					' ⣷⢄⠻⣿⣟⠿⠦⠍⠉⣡⣾⣿⣿⣿⣿⣿⣿⢸⣿⣦⠙⣿⣿⣿⣿⣿⣿⣿⣿⠟ ',
					' ⡕⡑⣑⣈⣻⢗⢟⢞⢝⣻⣿⣿⣿⣿⣿⣿⣿⠸⣿⠿⠃⣿⣿⣿⣿⣿⣿⡿⠁⣠ ',
					' ⡝⡵⡈⢟⢕⢕⢕⢕⣵⣿⣿⣿⣿⣿⣿⣿⣿⣿⣶⣶⣿⣿⣿⣿⣿⠿⠋⣀⣈⠙ ',
					' ⡝⡵⡕⡀⠑⠳⠿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⠿⠛⢉⡠⡲⡫⡪⡪⡣ ',
					"",
					"",
				},
				center = {
					{
						icon = "󰈤   ",
						desc = "Open file            ",
						key = 'f',
						key_format = ' [%s]',
						action = 'Telescope find_files',

					},
					{
						icon = "󰈤   ",
						desc = "New file             ",
						key = 'n',
						key_format = ' [%s]',
						action = 'new +only',

					},
					{
						icon = "   ",
						desc = "Live grep            ",
						key = 'g',
						key_format = ' [%s]',
						action = 'Telescope live_grep',

					},
					{
						icon = "󰉖   ",
						desc = "Tree                 ",
						key = 't',
						key_format = ' [%s]',
						action = 'NvimTreeToggle',

					},
					{
						icon = "󰉖   ",
						desc = "Oil                  ",
						key = 'o',
						key_format = ' [%s]',
						action = 'Oil',

					},
					{
						icon = "   ",
						desc = "Lazy                  ",
						key = 'l',
						key_format = ' [%s]',
						action = 'Lazy',

					},
					{
						icon = "󰊢   ",
						desc = "Git                  ",
						key = "g",
						key_format = ' [%s]',
						action = 'Neogit',
					},
					{
						icon = "   ",
						desc = "Help                 ",
						key = "?",
						key_format = ' [%s]',
						action = 'vert :h',
					},
					{
						icon = "   ",
						desc = "Quit                 ",
						key = "q",
						key_format = ' [%s]',
						action = 'qa!',
					},
					{
						-- Spacer
						desc = "",
					},
					{
						desc = "",
					},
				},
				footer = function()
					local stats = require "lazy".stats()
					local ms = math.floor(stats.startuptime * 100 + 0.5) / 100
					return { "🌸 Neovim loaded " .. stats.loaded .. " / " .. stats.count .. " plugins in " .. ms .. "ms ⛩ " }
				end,
				vertical_center = false,
			}
		}
	end
}
