return {
  'tpope/vim-commentary',
  {
    'folke/todo-comments.nvim',
		config = function()
			require("todo-comments").setup()
		end,
  },
	"tpope/vim-surround",
	{
		"echasnovski/mini.cursorword",
		version = "*",
		config = function()
			require("mini.cursorword").setup()
		end,
	},
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
  {
    'nvim-pack/nvim-spectre',
		keys = {
			{ "<leader>S", "<cmd>lua require('spectre').open()<CR>", desc = "Git" },
		},
		config = function()
			require("spectre").setup()
		end,
  },
  {
    'kevinhwang91/nvim-bqf',
		config = function()
			require("bqf").setup()
		end,
  },
  {
    'JoosepAlviste/nvim-ts-context-commentstring',
		lazy = false,
		config = function()
			require("nvim-treesitter.configs").setup({
        context_commentstring = {
          enable = true
        }
      })
		end,
  }
}
