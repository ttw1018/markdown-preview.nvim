local add_command = vim.api.nvim_create_user_command
local preview = require "preview"

add_command('MarkdownPreview', function() preview.preview() end, {})
