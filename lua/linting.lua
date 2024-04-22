require('nvim-lint').linters_by_ft = {
  markdown = {'ruby', 'luacheck', 'jsonlint', 'tidy', 'eslint', 'erb_lint', 'credo'}
}

vim.api.nvim_create_autocmd({ "BufWritePost" }, {
  callback = function()
    require("nvim-lint").try_lint()
  end,
})
