return {
	{
		"mhartington/formatter.nvim",
		config = function()
			local util = require("formatter.util")
			require("formatter").setup({
				-- Enable or disable logging
				logging = true,
				-- Set the log level
				log_level = vim.log.levels.WARN,
				-- All formatter configurations are opt-in
				filetype = {
					lua = {
						require("formatter.filetypes.lua").stylua,
					},
					typescript = {
						require("formatter.filetypes.typescript").prettier,
						require("formatter.filetypes.typescript").eslint_d,
					},
					typescriptreact = {
						require("formatter.filetypes.typescript").prettier,
						require("formatter.filetypes.typescript").eslint_d,
					},
					["*"] = {
						require("formatter.filetypes.any").remove_trailing_whitespace,
					},
				},
			})
		end,
	},
}
