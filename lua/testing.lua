local M = {}

function M.test()
  if vim.bo.filetype == 'elixir' then
    vim.cmd('!mix test %')
  elseif vim.bo.filetype == 'ruby' then
    vim.cmd('!bin/rspec %')
  else
    vim.cmd('!Rake')
  end
end

return M
