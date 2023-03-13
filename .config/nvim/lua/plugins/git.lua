return {
	{
		"folke/trouble.nvim",
		config = function()
			require("trouble").setup()
		end,
	},
	{
		"lewis6991/gitsigns.nvim",
		config = function()
			require("gitsigns").setup()
		end,
	},
	{
		"TimUntersberger/neogit",
		keys = {
			{ "<leader>gs", "<cmd>Neogit<cr>", desc = "Git" },
		},
		config = function()
			require("neogit").setup()
		end,
	},
}
