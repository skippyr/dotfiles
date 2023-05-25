require("plugins/settings")

local ensure_packer = function()
	local fn = vim.fn
	local install_path =
		fn.stdpath("data") ..
		"/site/pack/packer/start/packer.nvim"
	if fn.empty(fn.glob(install_path)) > 0 then
		fn.system({
			"git",
			"clone",
			"--depth",
			"1",
			"https://github.com/wbthomason/packer.nvim",
			install_path
		})
		vim.cmd("packadd packer.nvim")
		return true
	end
	return false
end
local packer_bootstrap = ensure_packer()
require("packer").startup(function(use)
	use "wbthomason/packer.nvim"
	use "williamboman/mason.nvim"
	use "williamboman/mason-lspconfig.nvim"
	use "neovim/nvim-lspconfig"
	use "hrsh7th/nvim-cmp"
	use "hrsh7th/cmp-nvim-lsp"
	use "hrsh7th/cmp-buffer"
	use "windwp/nvim-autopairs"
	use "tpope/vim-surround"
	use "tpope/vim-commentary"
	use "vim-airline/vim-airline"
	use "tpope/vim-sleuth"
	if packer_bootstrap then
		require("packer").sync()
	end
end)

