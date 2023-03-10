return {
  {
    "folke/trouble.nvim",
    config = function()
      require("trouble").setup()
    end
  },
  {
    "TimUntersberger/neogit",
    keys = {
      { "<leader>gs", "<cmd>Neogit<cr>", desc = "Git" },
    },
    config = function()
      require("neogit").setup()
    end
  }
}
