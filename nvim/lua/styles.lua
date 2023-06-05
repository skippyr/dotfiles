function SetSpacing(tab_size, use_spaces_instead_of_tabs, rulers)
	vim.opt.tabstop = tab_size
	vim.opt.shiftwidth = tab_size
	vim.opt.expandtab = use_spaces_instead_of_tabs
	vim.opt.colorcolumn = rulers
	vim.cmd("filetype plugin indent off")
end

function SetTabs(always_show_tabs)
	vim.opt.showtabline = always_show_tabs and 2 or 0
end

function SetLineNumbers(show_line_numbers)
	if show_line_numbers then
		vim.opt.number = true
		vim.opt.relativenumber = true
	end
end

function SetColorScheme(color_scheme)
	vim.cmd("colorscheme " .. color_scheme)
end

function SetHiddenCharacters(hidden_characters)
	vim.opt.list = true
	vim.opt.listchars = hidden_characters
end

function SetCursor(use_terminal_cursor)
	if use_terminal_cursor then
		vim.opt.guicursor = ""
	end
end
