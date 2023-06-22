local settings = require("settings")

settings.apply({
  indentation_size = 4,
  indent_using_spaces = true,
  color_scheme = "flamerial",
  rulers = {80},
  plugins = {
    -- Format to be used to require plugins can be found at:
    -- https://github.com/wbthomason/packer.nvim
    "tpope/vim-surround",
    "tpope/vim-commentary",
    "tpope/vim-sleuth",
    "skippyr/flamerial.nvim",
    {
      "lukas-reineke/indent-blankline.nvim",
      config = function()
        require("indent_blankline").setup()
        vim.g.indent_blankline_char = "¦"
      end
    },
    {
      "vim-airline/vim-airline",
      config = function()
        vim.cmd("set noshowmode")
      end
    },
    {
      "windwp/nvim-autopairs",
      config = function()
        require("nvim-autopairs").setup()
      end
    },
    {
      "iamcco/markdown-preview.nvim",
      run = function()
        vim.fn["mkdp#util#install"]()
      end
    }
  },
  lsp_servers = {
    -- Available LSP servers can be found at:
    -- https://github.com/williamboman/mason-lspconfig.nvim
    "tsserver",
    "html",
    "cssls",
    "rust_analyzer",
    "lua_ls",
    "gopls"
  }
})

