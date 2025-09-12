return {
	"mfussenegger/nvim-lint",
	config = function()
		require "lint".linters_by_ft = {
			go = { "golangcilint" },
			cpp = { "cppcheck" },
			lua = { "luacheck" },
			python = { "mypy" },
		}
	end
}
