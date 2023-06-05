local installation_directory_path =
	vim.fn.stdpath("data") ..
	"/site/pack/packer/start/packer.nvim"

function is_plugin_manager_installed()
	return vim.fn.empty(vim.fn.glob(installation_directory_path)) <= 0
end

function install_plugin_manager()
	if not is_plugin_manager_installed() then
		vim.fn.system({
			"git",
			"clone",
			"--depth",
			"1",
			"https://github.com/wbthomason/packer.nvim",
			installation_directory_path
		})
		vim.cmd("packadd packer.nvim")
	end
end

function SetupPlugins(plugins)
	install_plugin_manager()
	local packer = require("packer")
	packer.startup(function(require_plugin)
		for _, plugin in pairs(plugins) do
			require_plugin(plugin)
		end
	end)
end

