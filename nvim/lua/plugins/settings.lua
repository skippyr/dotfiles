local servers = {
	"tsserver",
	"html",
	"cssls",
	"rust_analyzer",
	"lua_ls"
}
local server_settings = {
	on_attach = function()
		local keymaps = {
			["K"] = vim.lsp.buf.hover,
			["gd"] = vim.lsp.buf.definition,
			["gi"] = vim.lsp.buf.implementation
		}
		for
			key,
			fn
		in pairs(keymaps) do
			vim.keymap.set(
				"n",
				key,
				fn,
				{}
			)
		end
	end
}
require("mason").setup()
require("mason-lspconfig").setup({ ensure_installed = servers })
local cmp = require("cmp")
cmp.setup({
	sources = {
		{ name = 'buffer' },
		{ name = 'nvim_lsp' }
	},
	mapping = cmp.mapping.preset.insert({
		["<C-b>"] = cmp.mapping.scroll_docs(-4),
		["<C-f>"] = cmp.mapping.scroll_docs(4),
		["<C-Space>"] = cmp.mapping.complete(),
		["<C-e>"] = cmp.mapping.abort(),
		["<CR>"] = cmp.mapping.confirm({ select = true })
	})
})
local lsp_config = require("lspconfig")
for
	_index,
	server
in pairs(servers) do
	lsp_config[server].setup(server_settings)
end
require("nvim-autopairs").setup({})
vim.g.airline_powerline_fonts = 1
vim.g.airline_theme = "flamerial"

