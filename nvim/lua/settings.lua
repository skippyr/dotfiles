local tab_size_in_spaces = 4
local use_spaces_instead_of_tabs = false
local hidden_characters = {
	["space"] = "·",
	["tab"] = "¦ "
}
local rulers = {80}
vim.opt.number = true
vim.opt.relativenumber = true
vim.opt.tabstop = tab_size_in_spaces
vim.opt.shiftwidth = tab_size_in_spaces
vim.opt.expandtab = use_spaces_instead_of_tabs
vim.opt.list = true
vim.opt.listchars = hidden_characters
vim.opt.colorcolumn = rulers
vim.opt.guicursor = ""
vim.cmd("set noshowmode")
vim.cmd("filetype plugin indent off")
vim.cmd("colorscheme flamerial")

