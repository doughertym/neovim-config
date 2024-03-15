return {
  {
    "williamboman/mason.nvim",
    config = function()
      require("mason").setup()
    end
  },
  {
    "williamboman/mason-lspconfig.nvim",
    config = function()
      require("mason-lspconfig").setup({
        ensure_installed = {
          "lua_ls"
        }
      })
    end
  },
  {
    "neovim/nvim-lspconfig",
    config = function()
      local lspconfig = require("lspconfig")
      lspconfig.lua_ls.setup({})

      local capabilities = require("cmp_nvim_lsp").default_capabilities()
      lspconfig.clangd.setup({
        capabilities = capabilities
      })

      -- TODO add more key bindings?
      vim.keymap.set({'n'}, '<leader>ca', vim.lsp.buf.code_action, {})
    end
  }
}
