local M = {}

function M.preview()
  local path = vim.fn.expand('%:p')
  local extension = vim.fn.expand('%:e')
  if extension == "md" or extension == "markdown" then
    -- vim.api.nvim_command('silent !open '..path..'')
    os.execute('open '..path..'')
  else
    print("not markdown file")
  end
end

return M
