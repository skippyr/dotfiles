local tab_size_in_spaces = 3
local hidden_characters = {
	["space"] = "·",
	["tab"] = "¦ "
}
vim.opt.number = true
vim.opt.relativenumber = true
vim.opt.tabstop = tab_size_in_spaces
vim.opt.shiftwidth = tab_size_in_spaces
vim.opt.expandtab = false
vim.opt.laststatus = 1
vim.opt.list = true
vim.opt.listchars = hidden_characters
vim.opt.guicursor = ""
vim.cmd("filetype plugin indent off")
vim.cmd("colorscheme flamerial")

