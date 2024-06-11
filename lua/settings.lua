
vim.cmd [[
  set expandtab
  set tabstop=2
  set softtabstop=2
  set shiftwidth=2
]]
vim.g.mapleader = " "
vim.keymap.set('n', '<C-n>', ':Neotree filesystem reveal left<CR>')
--vim.keymap.set('n', '<C-N>', ':Neotree filesystem close<CR>')

