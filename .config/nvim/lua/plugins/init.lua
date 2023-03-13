return {
	"tpope/vim-commentary",
	"tpope/vim-surround",
	{
		"windwp/nvim-autopairs",
		config = function()
			require("nvim-autopairs").setup({})
		end,
	},
	{
		"windwp/nvim-autopairs",
		config = function()
			require("nvim-autopairs").setup({})
		end,
	},
	"norcalli/nvim-colorizer.lua",
	{
		"echasnovski/mini.statusline",
		version = "*",
		config = function()
			require("mini.statusline").setup()
		end,
	},
}
