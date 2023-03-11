return {
	{
		"nvim-neo-tree/neo-tree.nvim",
		keys = {
			{ "<leader>e", "<cmd>Neotree toggle<cr>", desc = "NeoTree" },
		},
		dependencies = {
			"nvim-lua/plenary.nvim",
			"nvim-tree/nvim-web-devicons", -- not strictly required, but recommended
			"MunifTanjim/nui.nvim",
		},
		config = function()
			require("neo-tree").setup({
				close_if_last_window = false,
				filesystem = {
					follow_current_file = true,
				},
				window = {
					mapping_options = {
						noremap = true,
						nowait = true,
					},
					mappings = {
						["<esc>"] = "revert_preview",
						["P"] = { "toggle_preview", config = { use_float = true } },
						["l"] = "open",
						["S"] = "open_split",
						["s"] = "open_vsplit",
						["h"] = "close_node",
					},
				},
			})
		end,
	},
}
