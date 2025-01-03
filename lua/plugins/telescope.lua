
return {
  { 'nvim-telescope/telescope.nvim',
    tag = '0.1.5',
    dependencies = {
     'nvim-lua/plenary.nvim'
    },
    config = function()
      local builtin = require("telescope.builtin")
      vim.keymap.set('n', '<C-p>', builtin.find_files, {})
      -- Requires https://github.com/BurntSushi/ripgrep to be installed
      vim.keymap.set('n', '<leader>gr', builtin.live_grep, {})
    end
  },
  {
    "nvim-telescope/telescope-ui-select.nvim",
    config = function()
      require("telescope").setup {
        extensions = {
          ["ui-select"] = {
            require("telescope.themes").get_dropdown {
            }
          }
        }
      }
      require("telescope").load_extension("ui-select")
    end
  }
}
