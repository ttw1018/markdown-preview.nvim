local M = {}

function M.MarkdownPreview()
  local path = vim.fn.expand('%:p')
  local extension = vim.fn.expand('%:e')
  if extension == "md" or extension == "markdown" then
    -- vim.api.nvim_command('silent !open '..path..'')
    os.execute('open '..path)
  else
    print("not markdown file")
  end
end

function M.LatexPdfPreview()
  local path = vim.fn.expand('%:p:h')..'/output/'..vim.fn.expand('%:t:r')..'.pdf'
  local extension = vim.fn.expand('%:e')
  if extension == "tex" then
    os.execute('open '..path)
  else
    print("not latex file")
  end
end

function M.Preview()
  local extension = vim.fn.expand('%:e')
  if extension == "md" or extension == "markdown" then
    local path = vim.fn.expand('%:p')
    os.execute('open '..path)
  elseif extension == "tex" then
    local path = vim.fn.expand('%:p:h')..'/output/'..vim.fn.expand('%:t:r')..'.pdf'
    os.execute('open '..path)
  else
    print("only markdown and latex pdf file are supported previewing")
  end
end

return M
