local module = {}
local installation_directory = vim.fn.stdpath("data") .. 
                               "/site/pack/packer/start/packer.nvim"

local function ensure_plugin_manager_is_installed()
    local is_installed = vim.fn.empty(vim.fn.glob(installation_directory)) == 0
    if is_installed then
        return
    end
    vim.fn.system({"git", "clone", "--depth", "1",
                   "https://github.com/wbthomason/packer.nvim",
                   installation_directory})
    vim.cmd("packadd packer.nvim")
end

function module.setup_plugins(plugins)
    ensure_plugin_manager_is_installed()
    require("packer").startup(function(add_plugin)
        for _, plugin in pairs(plugins) do
            add_plugin(plugin)
        end
    end)
end

return module
