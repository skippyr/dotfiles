function SetSpacing(tab_size, use_spaces_instead_of_tabs, rulers)
	vim.opt.tabstop = tab_size
	vim.opt.shiftwidth = tab_size
	vim.opt.expandtab = use_spaces_instead_of_tabs
	vim.opt.colorcolumn = rulers
end

function SetColorscheme(colorscheme)
	vim.cmd("colorscheme " .. colorscheme)
end

function SetHiddenCharacters(hidden_characters)
	vim.opt.list = true
	vim.opt.listchars = hidden_characters
end

function SetCursor(cursor)
	vim.opt.guicursor = cursor == "terminal" and "" or cursor
end
