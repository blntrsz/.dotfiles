return {
  {
    'VonHeikemen/lsp-zero.nvim',
    config = function()
      local lsp = require("lsp-zero")

      lsp.preset("recommended")

      lsp.ensure_installed({
        'tsserver',
        'rust_analyzer',
      })

      -- Fix Undefined global 'vim'
      lsp.configure('lua-language-server', {
        settings = {
          Lua = {
            diagnostics = {
              globals = { 'vim' }
            }
          }
        }
      })


      local cmp = require('cmp')
      local cmp_select = { behavior = cmp.SelectBehavior.Select }
      local cmp_mappings = lsp.defaults.cmp_mappings({
            ['<C-p>'] = cmp.mapping.select_prev_item(cmp_select),
            ['<C-n>'] = cmp.mapping.select_next_item(cmp_select),
            ['<C-Space>'] = cmp.mapping(cmp.mapping.complete(), { 'i', 'c' }),
      })

      lsp.setup_nvim_cmp({
        mapping = cmp_mappings
      })

      lsp.set_preferences({
        suggest_lsp_servers = false,
        sign_icons = {
          error = 'E',
          warn = 'W',
          hint = 'H',
          info = 'I'
        }
      })

      lsp.on_attach(function(client, bufnr)
        local get_opts = function(desc)
          return { buffer = bufnr, remap = false, desc = desc }
        end

        vim.keymap.set("n", "gd", function() vim.lsp.buf.definition() end, get_opts('Go to definition'))
        vim.keymap.set("n", "K", function() vim.lsp.buf.hover() end, get_opts('Hover documantation'))
        vim.keymap.set("n", "<leader>vws", function() vim.lsp.buf.workspace_symbol() end, get_opts('Workspace symbol'))
        vim.keymap.set("n", "<leader>d", function() vim.diagnostic.open_float() end, get_opts('Open fload diagnostic'))
        vim.keymap.set("n", "gr", function() vim.lsp.buf.references() end, get_opts('Go to references'))
        vim.keymap.set("n", "<leader>cn", function() vim.diagnostic.goto_next() end, get_opts('Go to next diagnostic'))
        vim.keymap.set("n", "<leader>cp", function() vim.diagnostic.goto_prev() end, get_opts('Go to previous diagnostic'))
        vim.keymap.set("n", "<leader>ca", function() vim.lsp.buf.code_action() end, get_opts('Code action'))
        vim.keymap.set("n", "<leader>cr", function() vim.lsp.buf.rename() end, get_opts('Rename'))
        vim.keymap.set("n", "<leader>cf", function() vim.lsp.buf.format() end, get_opts('Code format'))
      end)

      lsp.setup()

      vim.diagnostic.config({
        virtual_text = true
      })
    end,
    dependencies = {
      -- LSP Support
      { 'neovim/nvim-lspconfig' },
      { 'williamboman/mason.nvim' },
      { 'williamboman/mason-lspconfig.nvim' },

      -- Autocompletion
      { 'hrsh7th/nvim-cmp' },
      { 'hrsh7th/cmp-buffer' },
      { 'hrsh7th/cmp-path' },
      { 'saadparwaiz1/cmp_luasnip' },
      { 'hrsh7th/cmp-nvim-lsp' },
      { 'hrsh7th/cmp-nvim-lua' },

      -- Snippets
      { 'L3MON4D3/LuaSnip' },
      { 'rafamadriz/friendly-snippets' },
    }
  },

  {
    "williamboman/mason.nvim",
    config = function()
      require("mason").setup()
    end
  },
}
