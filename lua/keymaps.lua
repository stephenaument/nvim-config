-- define common options
local opts = {
    noremap = true,      -- non-recursive
    silent = true,       -- do not show message
}

-----------------
-- Normal mode --
-----------------

vim.g.mapleader = ','

-- Hint: see `:h vim.map.set()`
-- Better window navigation
vim.keymap.set('n', '<C-h>', '<C-w>h', opts)
vim.keymap.set('n', '<C-j>', '<C-w>j', opts)
vim.keymap.set('n', '<C-k>', '<C-w>k', opts)
vim.keymap.set('n', '<C-l>', '<C-w>l', opts)
vim.keymap.set('n', '<space><space>', '<C-6>', opts)

-- NvimTree
vim.keymap.set('n', '<Leader>n', ':NvimTreeToggle<cr>', opts)
vim.keymap.set('n', '<Leader>r', ':NvimTreeRefresh<cr>', opts)

vim.keymap.set('n', '<Leader><space>', ':nohl<cr>', opts)

vim.keymap.set('n', '<f3>', ':so ~/.config/nvim/init.lua<cr>', opts)
vim.keymap.set('n', '<f4>', '40<c-w>+', opts)
vim.keymap.set('n', '<f7>', '40<c-w>-', opts)

-- Tests
vim.keymap.set('n', '<f8>', ':w<cr>:TestLast<cr>', {noremap = true})
vim.keymap.set('i', '<f8>', '<esc>:w<cr>:TestLast<cr>', {noremap = true})
vim.keymap.set('n', '<f9>', ':w<cr>:TestNearest<cr>', opts)
vim.keymap.set('i', '<f9>', '<esc>:w<cr>:TestNearest<cr>', opts)
vim.keymap.set('n', '<leader>t', ':w<cr>:TestFile<cr>', {noremap = true})
vim.keymap.set('n', '<leader>a', ':w<cr>:TestSuite<cr>', {noremap = true})
vim.keymap.set('n', '<leader>l', ':w<cr>:TestLast<cr>', {noremap = true})
vim.keymap.set('n', '<leader>v', ':w<cr>:TestVisit<cr>', {noremap = true})

-- Terminal Mode
vim.keymap.set('t', '<Esc>', '<C-\\><C-n>', {noremap = true, silent = true})


vim.keymap.set('n', '\\', ':Ag<CR>', opts)
vim.keymap.set('n', '<Leader>*', ':Ag <C-R><C-W><CR>', opts)

vim.keymap.set('n', ',,', ':cclose<CR>', opts)

vim.keymap.set('n', '<Leader>g', ':Ge:<CR>', opts) -- Git

-- fzf shortcuts
vim.keymap.set('n', '<C-p>', ':GFiles<CR>', opts)
vim.keymap.set('n', '<C-.>', ':Files<CR>', opts)
vim.keymap.set('n', '<Leader>b', ':Buffers<CR>', opts)
vim.keymap.set('n', '<Leader>c', ':Commits<CR>', opts)

-- oil.nvim mimic vim-vinegar navigation to parent
vim.keymap.set('n', '-', '<CMD>Oil<CR>', { desc = 'Open parent directory' })



-----------------
-- Visual mode --
----------------- 

-- Hint: start visual mode with the same area as the previous area and the same mode
vim.keymap.set('v', '<', '<gv', opts)
vim.keymap.set('v', '>', '>gv', opts)


-----------------
-- Aliases --
-----------------
