function SetSpacing(tab_size, use_spaces_instead_of_tabs, rulers)
	vim.opt.tabstop = tab_size
	vim.opt.shiftwidth = tab_size
	vim.opt.expandtab = use_spaces_instead_of_tabs
	vim.opt.colorcolumn = rulers
end
