local augroup = vim.api.nvim_create_augroup -- Create/get autocommand group
local autocmd = vim.api.nvim_create_autocmd

augroup("YankHighlight", { clear = true })
autocmd("TextYankPost", {
	group = "YankHighlight",
	callback = function()
		vim.highlight.on_yank({ higroup = "IncSearch", timeout = "100" })
	end,
})

augroup("FormatAutogroup", { clear = true })
autocmd("BufWritePost", {
	group = "FormatAutogroup",
	callback = function()
		vim.cmd([[FormatWrite]])
	end,
})
