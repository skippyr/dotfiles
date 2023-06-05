require("styles")
require("plugins")
require("lsp")
require("tables")

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
	"tpope/vim-surround",
	"tpope/vim-commentary",
	"skippyr/flamerial.nvim",
	{
		"vim-airline/vim-airline",
		config = function()
			vim.cmd("set noshowmode")
		end
	},
	{
		"windwp/nvim-autopairs",
		config = function()
			require("nvim-autopairs").setup()
		end
	},
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

SetupPlugins(plugins)
SetSpacing(tab_size, use_spaces_instead_of_tabs, rulers)
SetCursor(cursor)
SetColorscheme(colorscheme)
SetHiddenCharacters(hidden_characters)
SetupLspServers(lsp_servers)
