-- set termguicolors to enable highlight groups
vim.opt.termguicolors = true

vim.opt.syntax = on

vim.opt.hlsearch = true

-- define your colorscheme here
require('ayu').setup({
    mirage = false, -- Set to `true` to use `mirage` variant instead of `dark` for dark background.
    overrides = {}, -- A dictionary of group names, each associated with a dictionary of parameters (`bg`, `fg`, `sp` and `style`) and colors in hex.
})

require('ayu').colorscheme()
