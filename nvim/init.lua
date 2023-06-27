local settings = require("settings")

settings.apply({
  -- Adjust the indentation size when the tab key is pressed. It will also
  -- affect "shifting", when the right angle bracket key (>) is pressed twice.
  --
  -- It may be overwritten when editing some file types or by EditorConfig.
  indentation_size = 4,
  -- Defines if the indentation will use spaces. If set to `false`, it will
  -- use tabs.

  -- It may be overwritten when editing some file types or by EditorConfig.
  indent_using_spaces = true,
  -- Defines the color scheme to be used.
  color_scheme = "flamerial",
  -- Defines the rulers to be used as reference to break lines in the editor.
  rulers = {80},
  -- A list of plugins to be installed by the plugin manager.
  plugins = {
    -- The format to be used to require plugins can be found at:
    -- https://github.com/wbthomason/packer.nvim

    -- A color scheme with great support for terminals and GUI applications.
    "skippyr/flamerial.nvim",
    -- Adds the keymap `g + c` to comment lines of code.
    "tpope/vim-commentary",
    -- Adds a new decorators to the side of the editor to track changes of files
    -- inside a Git repository.
    "mhinz/vim-signify",
    -- Adds new keymaps to deal with delimiters such as: parenthesis and curly
    -- brackets.
    "tpope/vim-surround",
    -- Adds icons from Nerd Fonts. It supports many different plugins.
    "ryanoasis/vim-devicons",
    {
      -- Automatically closes pairs of delimiters such as: parenthesis and curly
      -- brackets.
      "windwp/nvim-autopairs",
      config = function()
        require("nvim-autopairs").setup()
      end
    },
    {
      -- Shows indentation guide lines for files indentated with spaces or
      -- tabs.
      "lukas-reineke/indent-blankline.nvim",
      config = function()
        require("indent_blankline").setup()
        vim.g.indent_blankline_char = "¦"
      end
    },
    {
      -- Adds a better buffer bar in the top of the editor with support to
      -- icons.
      "akinsho/bufferline.nvim",
      tag = "*",
      requires = 'nvim-tree/nvim-web-devicons',
      config = function()
        require("bufferline").setup()
      end
    },
    {
      -- Adds a better status bar in the bottom of the editor with support to
      -- icons from the vim-devicons plugin.
      "vim-airline/vim-airline",
      config = function()
        vim.cmd("set noshowmode")
        vim.g.airline_powerline_fonts = 1
      end
    },
    {
      -- Adds the `:MarkdownPreview` command when editing markdown files to
      -- open a preview of them in the browser. It requires an external binary,
      -- which is downloaded when installing plugins.
      "iamcco/markdown-preview.nvim",
      run = function()
        vim.fn["mkdp#util#install"]()
      end
    },
    {
      -- A formatter for web files.
      "prettier/vim-prettier",
      run = "npm i --omit=dev",
      config = function()
        vim.cmd("let g:prettier#autoformat = 1")
        vim.cmd("let g:prettier#autoformat_require_pragma = 0")
      end
    }
  },
  -- A list of LSP servers to be installed by the LSP server manager.
  lsp_servers = {
    -- A list of available LSP servers can be found at:
    -- https://github.com/williamboman/mason-lspconfig.nvim
    "tsserver",
    "html",
    "cssls",
    "rust_analyzer",
    "lua_ls",
    "gopls",
    "clangd"
  }
})

