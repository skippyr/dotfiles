local settings = require("settings")

settings.apply({
	indentation_size = 3,
	indent_using_spaces = false,
	color_scheme = "flamerial",
	hidden_characters = {
		space = "·",
		tab = "¦ ",
		eol = "¬"
	},
	rulers = {80},
	plugins = {
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
	},
	lsp_servers = {
		-- Available LSP servers can be found at:
		-- https://github.com/williamboman/mason-lspconfig.nvim
		"tsserver",
		"html",
		"cssls",
		"rust_analyzer",
		"lua_ls",
		"gopls"
	}
})

