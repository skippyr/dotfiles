local settings = {
	on_attach = function()
		local keymaps = {
			["K"] = vim.lsp.buf.hover,
			["gd"] = vim.lsp.buf.definition,
			["gi"] = vim.lsp.buf.implementation
		}
		for key, action in pairs(keymaps) do
			vim.keymap.set("n", key, action, {})
		end
	end
}

function SetupLspServers(lsp_servers)
	local cmp = require("cmp")
	local lsp_config = require("lspconfig")
	require("mason").setup()
	require("mason-lspconfig").setup({ensure_installed = lsp_servers})
	cmp.setup({
		sources = {
			{ name = "buffer" },
			{ name = "nvim_lsp" }
		},
		mapping = cmp.mapping.preset.insert({
			["<C-b>"] = cmp.mapping.scroll_docs(-4),
			["<C-f>"] = cmp.mapping.scroll_docs(4),
			["<C-Space>"] = cmp.mapping.complete(),
			["<C-e>"] = cmp.mapping.abort(),
			["<CR>"] = cmp.mapping.confirm({select = true})
		})
	})
	for _, lsp_server in pairs(lsp_servers) do
		lsp_config[lsp_server].setup(settings)
	end
end
