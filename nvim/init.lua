require("styles")
require("plugins")

local tab_size = 4
local use_spaces_instead_of_tabs = false
local colorscheme = "flamerial"
local cursor = "terminal"
local hidden_characters = {
	space = "·",
	tab = "¦ "
}
local rulers = {80}
local plugins = {
	-- Format to be used to require plugins can be found at:
	-- https://github.com/wbthomason/packer.nvim
	"wbthomason/packer.nvim",
	"williamboman/mason.nvim",
	"williamboman/mason-lspconfig.nvim",
	"neovim/nvim-lspconfig",
	"hrsh7th/nvim-cmp",
	"hrsh7th/cmp-nvim-lsp",
	"hrsh7th/cmp-buffer",
	"windwp/nvim-autopairs",
	"tpope/vim-surround",
	"tpope/vim-commentary",
	"skippyr/flamerial.nvim",
	"vim-airline/vim-airline",
	{
		"iamcco/markdown-preview.nvim",
		run = function()
			vim.fn["mkdp#util#install"]()
		end
	}
}
local lsp_servers = {
	-- Available LSP servers can be found at:
	-- https://github.com/williamboman/mason-lspconfig.nvim
	"tsserver",
	"html",
	"cssls",
	"rust_analyzer",
	"lua_ls"
}

InstallPlugins(plugins)
SetSpacing(tab_size, use_spaces_instead_of_tabs, rulers)
SetCursor(cursor)
SetColorscheme(colorscheme)
SetHiddenCharacters(hidden_characters)
