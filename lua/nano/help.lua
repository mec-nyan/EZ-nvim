-- Small wrapper around neovim's help.
--     * Open on a vertical split.
--     * Floating search bar.
--     * Completion.

local M = {}

local help_me = function(prompt)
	prompt = prompt or "  "
	local buf = vim.api.nvim_create_buf(false, true)
	local width = math.floor(vim.o.columns / 3)
	local height = 1
	local row = math.floor((vim.o.lines - height) / 3)
	local col = math.floor((vim.o.columns - width) / 2)

	local win = vim.api.nvim_open_win(buf, true, {
		relative = "editor",
		row = row,
		col = col,
		width = width,
		height = height,
		style = "minimal",
		border = "rounded",
	})

	vim.api.nvim_set_option_value("buftype", "prompt", { buf = buf })
	-- TODO: Completion (help) doesn't work in popups.
	-- vim.bo[buf].buftype = "prompt"
	-- vim.bo[buf].omnifunc = "helpcomplete"
	vim.fn.prompt_setprompt(buf, prompt)
	vim.cmd.startinsert()

	vim.keymap.set("i", "<CR>", function()
		local input = vim.api.nvim_get_current_line()
		input = input:gsub(prompt, "", 1)
		vim.api.nvim_win_close(win, true)
		if input and input ~= "" then
			vim.cmd("vertical help " .. input)
		end
	end, { buffer = buf })

	vim.keymap.set("i", "<ESC>", function()
		vim.api.nvim_win_close(win, true)
	end, { buffer = buf })
end

local help_cmd = function()
	local prompt = "   "
	vim.ui.input({ prompt = prompt, completion = "help" }, function(topic)
		if topic and topic ~= "" then
			vim.cmd("vertical help " .. topic)
		end
	end)
end

-- setup proviedes a command and an optional keybinding.
M.setup = function(opts)
	local prompt = opts.prompt
	vim.api.nvim_create_user_command("HelpMe", function()
		help_me(prompt)
	end, {})

	vim.api.nvim_create_user_command("HelpPrompt", function()
		help_cmd()
	end, {})

	if opts and opts.create_keymap then
		vim.keymap.set("n", "<leader>hm", "<cmd>HelpMe<CR>", { noremap = true, silent = true })
		vim.keymap.set("n", "<leader>h", "<cmd>HelpPrompt<CR>", { noremap = true, silent = true })
	end
end

return M
