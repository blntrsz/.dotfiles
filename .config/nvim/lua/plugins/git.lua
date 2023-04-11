return {
	{
		"folke/trouble.nvim",
		config = function()
			require("trouble").setup()
		end,
	},
	{
		"lewis6991/gitsigns.nvim",
		lazy = false,
		keys = {
			{ "<leader>gh", "<cmd>Gitsigns preview_hunk<cr>", desc = "Preview hunk" },
			{ "<leader>gn", "<cmd>Gitsigns next_hunk<cr>", desc = "Next hunk" },
			{ "<leader>gp", "<cmd>Gitsigns prev_hunk<cr>", desc = "Previous hunk" },
			{ "<leader>gb", "<cmd>Gitsigns blame_line<cr>", desc = "Blame line" },
			{ "<leader>gr", "<cmd>Gitsigns reset_hunk<cr>", desc = "Reset hunk" },
		},
		config = function()
			require("gitsigns").setup()
		end,
	},
	{
		"tpope/vim-fugitive",
		keys = {
			{ "<leader>gs", "<cmd>tab G<cr>", desc = "Git" },
		},
	},
}
