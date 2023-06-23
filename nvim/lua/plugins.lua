-- A module that contains operations to setup up plugins.

local module = {}

-- This file contains a refactored version of the default instructions given
-- to setup the packer.nvim plugin, that can be found here:
-- https://github.com/wbthomason/packer.nvim

-- The directory where packer.nvim and the plugins will be installed.
-- By default, it points to `~/.local/share/nvim`.
local installation_directory = vim.fn.stdpath("data") .. "/site/pack/packer/start/packer.nvim"

-- Ensures that packer.nvim will be installed. If it is not installed, it will
-- install it, and skip if it is.
local function ensure_plugin_manager_is_installed()
  local is_installed = vim.fn.empty(vim.fn.glob(installation_directory)) == 0

  if is_installed then
    return
  end

  vim.fn.system({
    "git",
    "clone",
    "--depth",
    "1",
    "https://github.com/wbthomason/packer.nvim",
    installation_directory
  })
  vim.cmd("packadd packer.nvim")
end

-- Setups a list of plugins using packer.nvim.
function module.setup_plugins(plugins)
  ensure_plugin_manager_is_installed()

  -- A list of plugins related to core functionalities.
  --
  -- They are included here to avoid that the user accidentally delete them
  -- in the `init.lua` file.
  local core_plugins = {
    "wbthomason/packer.nvim",
    "williamboman/mason.nvim",
    "williamboman/mason-lspconfig.nvim",
    "neovim/nvim-lspconfig",
    "hrsh7th/nvim-cmp",
    "hrsh7th/cmp-nvim-lsp",
    "hrsh7th/cmp-buffer",
    "tpope/vim-sleuth",
  }

  -- Adds all plugins to be tracked by the packer.nvim plugin.
  -- By using the `:PackerSync` command, they will be downloaded.
  require("packer").startup(function(add_plugin)
    for _, plugin in pairs(require("tables").concatenate_tables(plugins, core_plugins)) do
      add_plugin(plugin)
    end
  end)
end

return module