local add_command = vim.api.nvim_create_user_command
local preview = require("preview")
-- local texbuild = require("texbuild").texbuild
-- local bibbuild = require("texbuild").bibbuild

-- add_command('MarkdownPreview', function() preview.MarkdownPreview() end, {})
-- add_command('LatexPreview', function() preview.LatexPdfPreview() end, {})

add_command('Preview', function() preview.Preview() end, {})

-- add_command('Texbuild', function() texbuild() end, {})
--
-- add_command('Bibbuild', function() bibbuild() end, {})
--
--
-- add_command('TestInput', function() require("test.test").test() end, {})
