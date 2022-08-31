local add_command = vim.api.nvim_create_user_command
local preview = require("preview").preview
local texbuild = require("texbuild").texbuild
local bibbuild = require("texbuild").bibbuild

add_command('MarkdownPreview', function() preview() end, {})

add_command('Texbuild', function() texbuild() end, {})

add_command('Bibbuild', function() bibbuild() end, {})
