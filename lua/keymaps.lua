-- define common options
local opts = {
    noremap = true,      -- non-recursive
    silent = true,       -- do not show message
}

-----------------
-- Normal mode --
-----------------
---

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
vim.keymap.set('n', '<Leader>R', ':NvimTreeRefresh<cr>', opts)

vim.keymap.set('n', '<Leader><space>', ':nohl<cr>', opts)

vim.keymap.set('n', '<f3>', '10<c-w>+', opts)
vim.keymap.set('n', '<f4>', '40<c-w>+', opts)
vim.keymap.set('n', '<f6>', '10<c-w>-', opts)
vim.keymap.set('n', '<f7>', '40<c-w>-', opts)

-- Tests - vim-test/vim-test
vim.keymap.set('n', '<f8>', ':w<cr>:TestLast<cr>', opts)
vim.keymap.set('i', '<f8>', '<esc>:w<cr>:TestLast<cr>', opts)
vim.keymap.set('n', '<f9>', ':w<cr>:TestNearest<cr>', opts)
vim.keymap.set('i', '<f9>', '<esc>:w<cr>:TestNearest<cr>', opts)
vim.keymap.set('n', '<leader>t', ':w<cr>:TestFile<cr>', opts)
vim.keymap.set('n', '<leader>a', ':w<cr>:TestSuite<cr>', opts)
vim.keymap.set('n', '<f5>', ':w<cr>:TestSuite --only-failures<cr>', opts)
vim.keymap.set('i', '<f5>', '<esc>:w<cr>:TestSuite --only-failures<cr>', opts)
vim.keymap.set('n', '<leader>v', ':w<cr>:TestVisit<cr>', opts)

-- Terminal Mode — double-Esc exits to Nvim normal mode; single Esc passes through to shell (zsh vi mode)
vim.keymap.set('t', '<Esc><Esc>', '<C-\\><C-n>', opts)


vim.keymap.set('n', '\\', ':Ag<CR>', opts)
vim.keymap.set('n', '<Leader>*', ':Ag <C-R><C-W><CR>', opts)

vim.keymap.set('n', ',,', ':cclose<CR>', opts)

vim.keymap.set('n', '<Leader>g', ':Ge:<CR>', opts) -- Git

-- fzf shortcuts
vim.keymap.set('n', '<C-p>', ':GFiles<CR>', opts)
vim.keymap.set('n', '<C-.>', ':Files<CR>', opts)
vim.keymap.set('n', '<Leader>b', ':Buffers<CR>', opts)
vim.keymap.set('n', '<Leader>c', ':Commits<CR>', opts)
vim.keymap.set('n', '<Leader>C', ':Commits %<CR>', opts)
vim.keymap.set('n', '<Leader>r', ':GBranches<CR>', opts)
vim.keymap.set('n', '<Leader>s', ':GStashList<CR>', opts)

-- oil.nvim mimic vim-vinegar navigation to parent
vim.keymap.set('n', '-', '<CMD>Oil<CR>', { desc = 'Open parent directory' })

-- Claudecode.nvim
vim.keymap.set("n", "<leader>,c", "<cmd>ClaudeCode<cr>", opts)
vim.keymap.set("n", "<leader>,f", "<cmd>ClaudeCodeFocus<cr>", opts)
vim.keymap.set("n", "<leader>,r", "<cmd>ClaudeCode --resume<cr>", opts)
vim.keymap.set("n", "<leader>,C", "<cmd>ClaudeCode --continue<cr>", opts)
vim.keymap.set("n", "<leader>,m", "<cmd>ClaudeCodeSelectModel<cr>", opts)
vim.keymap.set("n", "<leader>,b", "<cmd>ClaudeCodeAdd %<cr>", opts)
vim.keymap.set("v", "<leader>,s", "<cmd>ClaudeCodeSend<cr>", opts)
vim.keymap.set("n", "<leader>,t", "<cmd>ClaudeCodeTreeAdd<cr>", opts)

-- Diff management
vim.keymap.set("n", "<leader>,a", "<cmd>ClaudeCodeDiffAccept<cr>", opts)
vim.keymap.set("n", "<leader>,d", "<cmd>ClaudeCodeDiffDeny<cr>", opts)

-- Utils
vim.keymap.set("n", "<leader>u", "i<C-r>=system(\"ruby -rsecurerandom -e 'print SecureRandom.uuid'\")<cr><esc>", opts)


-- Tables
vim.keymap.set("n", "<C-i>", ":Tabularize /|/<cr>:'<,'>s/^ //<cr>", opts)
vim.keymap.set("v", "<C-i>", ":Tabularize /|/<cr>:'<,'>s/^ //<cr>", opts)

-----------------
-- Visual mode --
----------------- 

-- Hint: start visual mode with the same area as the previous area and the same mode
vim.keymap.set('v', '<', '<gv', opts)
vim.keymap.set('v', '>', '>gv', opts)


-----------------
-- Aliases --
-----------------
