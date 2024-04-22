local M = {}

vim.g['test#strategy'] = 'neovim_sticky'

function M.test()
  if vim.bo.filetype == 'ruby' then
    vim.cmd('!bin/rspec %')
  else
    vim.cmd('!Rake')
  end
end

return M
