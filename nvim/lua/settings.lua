-- A module to require all the operations needed to setup Neovim.

local module = {}

-- Apply the settings to Neovim.
function module.apply(settings)
  -- The plugin manager must be setup first to avoid not being possible to
  -- download the plugins if some plugin is not found.
  require("plugins").setup_plugins(settings.plugins)

  -- Tabstop sets the indentation when the tab key is pressed.
  vim.opt.tabstop = settings.indentation_size
  -- Shiftwidth set the indentation when the right angle bracket key (>) is
  -- pressed twice, which is a "shift".
  vim.opt.shiftwidth = settings.indentation_size
  -- Expandtab is a boolean value that defines if it is to use spaces when
  -- pressing the tab key.
  vim.opt.expandtab = settings.indent_using_spaces
  -- Colorcolum is a table of values where rulers will be placed in the view.
  -- They can be used as reference to break long lines.
  vim.opt.colorcolumn = settings.rulers
  -- Number is a boolean value that makes the line numbers be show.
  vim.opt.number = true
  -- Relativenumber is a boolean value that makes the line numbers be show and
  -- and be counted relatively to cursor's position, which is better to track
  -- how much to move in normal mode.
  vim.opt.relativenumber = true

  -- The color scheme and LSP servers must be setup as last to avoid not
  -- applying the other settings, as these ones will not be found until the
  -- plugins get installed.
  vim.cmd("colorscheme " .. settings.color_scheme)
  require("lsp_servers").setup_lsp_servers(settings.lsp_servers)
end

return module
