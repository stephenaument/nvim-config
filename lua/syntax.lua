vim.api.nvim_create_autocmd({ "BufRead", "BufNewFile" }, {
  pattern = "*.md",
  callback = function()
    local buf = vim.api.nvim_get_current_buf()
    vim.api.nvim_buf_set_option(buf, "filetype", "markdown")
  end,
})

vim.api.nvim_create_autocmd({ "BufRead", "BufNewFile" }, {
  pattern = { "*.ex", "*.exs", "mix.lock" },
  callback = function()
    local buf = vim.api.nvim_get_current_buf()
    vim.api.nvim_buf_set_option(buf, "filetype", "elixir")
  end,
})

vim.api.nvim_create_autocmd({ "BufRead", "BufNewFile" }, {
  pattern = { "*.eex", "*.heex", "*.leex", "*.sface", "*.lexs" },
  callback = function()
    local buf = vim.api.nvim_get_current_buf()
    vim.api.nvim_buf_set_option(buf, "filetype", "eelixir")
  end,
})

require 'nvim-treesitter.configs'.setup {
  ensure_installed = "all", -- install parsers for all supported languages
  sync_install = false,
  ignore_install = { },
  highlight = {
    enable = true,
    disable = { },
  },
}
