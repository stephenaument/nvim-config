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
vim.keymap.set('n', '<f4>', ':call system("kitty @ resize-window --match title:Rake --increment -40 --axis vertical") <cr>', opts)
vim.keymap.set('n', '<f6>', ':call system("kitty @ close-window --match title:Rake")<cr>', opts)
vim.keymap.set('n', '<f7>', ':call system("kitty @ resize-window --match title:Rake --increment 40 --axis vertical && kitty @ scroll-window --match title:Rake 40") <cr>', opts)
vim.keymap.set('i', '<f8>', '<esc>:w<cr>:call system("kitty @ goto-layout fat && kitty @ send-text --match title:Rake mix test\\r")<cr>', opts)
-- vim.keymap.set('n', '<f8>', ':w<cr>:!mix test %<cr>', {noremap = true})
vim.keymap.set('n', '<f8>', ':w<cr>:lua require("testing").test()<cr>', {noremap = true})
vim.keymap.set('i', '<f8>', '<esc>:w<cr>:lua require("testing").test()<cr>', {noremap = true})
-- vim.keymap.set('i', '<f8>', '<esc>:w<cr>:call system("kitty @ goto-layout fat && kitty @ send-text --match title:Rake mix test\\r")<cr>', opts)
-- vim.keymap.set('n', '<f8>', ':w<cr>:call system("kitty @ goto-layout fat && kitty @ send-text --match title:Rake mix test %\\r")<cr>', opts)
vim.keymap.set('n', '<f9>', '<cr>:call system("kitty @ launch --title=Rake --cwd=current --dont-take-focus --allow-remote-control")<cr>', opts)

vim.keymap.set('n', '<f10>', ':w<cr>:call system("kitty @ goto-layout fat && kitty @ send-text --match title:Rake mix format\\r")<cr>', opts)
vim.keymap.set('i', '<f10>', '<esc>:w<cr>:call system("kitty @ goto-layout fat && kitty @ send-text --match title:Rake mix format\\r")<cr>', opts)

vim.keymap.set('n', '\\', ':Ag<CR>', opts)
vim.keymap.set('n', '<Leader>*', ':Ag <C-R><C-W><CR>', opts)

vim.keymap.set('n', ',,', ':cclose<CR>', opts)

vim.keymap.set('n', '<Leader>g', ':G<CR>', opts) -- Git

vim.keymap.set('n', '<Leader>t', ':lua vim.lsp.codelens.run()<cr>')

-- fzf shortcuts
vim.keymap.set('n', '<C-p>', ':Files<CR>', opts)
vim.keymap.set('n', '<C-.>', ':GFiles<CR>', opts)
vim.keymap.set('n', '<Leader>b', ':Buffers<CR>', opts)


-----------------
-- Visual mode --
----------------- 

-- Hint: start visual mode with the same area as the previous area and the same mode
vim.keymap.set('v', '<', '<gv', opts)
vim.keymap.set('v', '>', '>gv', opts)


-----------------
-- Aliases --
-----------------
