return {
	{
		"nvim-telescope/telescope.nvim",
		tag = "0.1.0",
		dependencies = { "nvim-lua/plenary.nvim" },
		keys = {
			{
				"<leader><leader>",
				"<cmd>lua require('telescope.builtin').find_files({ previewer = false })<cr>",
				desc = "Telescope find files",
			},
			{ "<leader>/", "<cmd>lua require('telescope.builtin').live_grep()<cr>", desc = "Telescope live grep" },
			{ "<leader>fb", "<cmd>lua require('telescope.builtin').buffers()<cr>", desc = "Telescope find buffers" },
			{
				"<leader>fh",
				"<cmd>lua require('telescope.builtin').help_tags()<cr>",
				desc = "Telescope find help tags",
			},
			{
				"<leader>fp",
				"<cmd>lua require('telescope.builtin').resume()<cr>",
				desc = "Telescope resume last telescope",
			},
		},
	},
}
