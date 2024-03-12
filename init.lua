
vim.cmd [[
  set expandtab
  set tabstop=2
  set softtabstop=2
  set shiftwidth=2
]]
vim.g.mapleader = " "

local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
  vim.fn.system({
    "git",
    "clone",
    "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git",
    "--branch=stable", -- latest stable release
    lazypath,
  })
end
vim.opt.rtp:prepend(lazypath)

require("lazy").setup("plugins")
-- Telescope
local builtin = require("telescope.builtin")
vim.keymap.set('n', '<C-p>', builtin.find_files, {})
vim.keymap.set('n', '<leader>fg', builtin.live_grep, {})
vim.keymap.set('n', '<C-n>', ':Neotree filesystem reveal left<CR>')
--vim.keymap.set('n', '<C-N>', ':Neotree filesystem close<CR>')

local config = require("nvim-treesitter.configs")
config.setup({
  -- ensure_installed = {"lua", "java", "javascript", "c_sharp", "json"},
  ensure_installed = {},
  highlight = { enabled = true },
  indent = { enabled = true }
})

require("catppuccin").setup()
vim.cmd.colorscheme "catppuccin"

