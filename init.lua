-- disable netrw at the very start of your init.lua
vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1

require('plugins')
require('options')
require('keymaps')
require('colorscheme')
require('syntax')
require('lsp')
require('nvim-tree').setup()
require('testing')
