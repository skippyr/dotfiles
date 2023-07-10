local module = {}

function module.apply(settings)
    require("plugins").setup_plugins(settings.plugins)
    vim.opt.tabstop = settings.indentation_size
    vim.opt.shiftwidth = settings.indentation_size
    vim.opt.expandtab = settings.indent_using_spaces
    vim.opt.colorcolumn = settings.rulers
    vim.opt.number = true
    vim.opt.relativenumber = true
    vim.cmd("colorscheme " .. settings.color_scheme)
    require("lsp_servers").setup_lsp_servers(settings.lsp_servers)
end

return module
