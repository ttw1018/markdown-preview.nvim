local M = {}

local function xelatexbuild()
  local path = vim.fn.expand('%')
  local extension = vim.fn.expand('%:e')
  local output = vim.fn.expand('%:h') .. '/output'
  if extension == 'tex' then
    os.execute('mkdir -p ' .. output)
    if os.execute('xelatex -output-directory=' .. output .. ' ' .. path) == 0 then
      return true
    else
      return false
    end
  else
    return false
  end

end

local function bibtexbuild ()
  -- local root = vim.fn.expand('%:h')
  local name = vim.fn.expand('%:t:r')
  local extension = vim.fn.expand('%:e')
  local auxpath = 'output/' .. name .. '.aux'
  if extension == 'tex' then
    if os.execute('bibtex '.. auxpath) == 0 then
      return true
    else
      return false
    end
  else
    return false
  end
end

function M.texbuild ()
  local output = vim.fn.expand('%:h') .. '/output'
  if xelatexbuild() then
    print("✅ build tex success")
    os.execute('cp ' .. output .. '/*.pdf ' .. output .. '/..')
  else
    print("❎ build tex failure")
  end
end

function M.bibbuild()
  local output = vim.fn.expand('%:h') .. '/output'
  if xelatexbuild() and bibtexbuild() and xelatexbuild() and xelatexbuild() then
    print("✅ xelate -> bibtex -> xelatex -> xelatex build success")
    os.execute('cp ' .. output .. '/*.pdf ' .. output .. '/..')
  else
    print("❎ xelate -> bibtex -> xelatex -> xelatex build failure")
  end
end


return M
