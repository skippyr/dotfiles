local module = {}
local plugins = require("plugins")
local lsp_servers = require("lsp_servers")

function module.apply(settings)
	vim.opt.tabstop = settings.indentation_size
	vim.opt.shiftwidth = settings.indentation_size
	vim.opt.expandtab = settings.indent_using_spaces
	vim.opt.colorcolumn = settings.rulers
	vim.opt.showtabline = 2
	vim.opt.number = true
	vim.opt.relativenumber = true
	vim.opt.list = true
	vim.opt.listchars = settings.hidden_characters
	vim.opt.guicursor = ""
	vim.cmd("colorscheme " .. settings.color_scheme)
	vim.cmd("filetype plugin indent off")
	plugins.setup_plugins(settings.plugins)
	lsp_servers.setup_lsp_servers(settings.lsp_servers)
end

return module
