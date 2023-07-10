local settings = require("settings")

settings.apply({
    indentation_size = 4,
    indent_using_spaces = true,
    color_scheme = "flamerial",
    rulers = {80},
    plugins = {"wbthomason/packer.nvim", "williamboman/mason.nvim",
               "williamboman/mason-lspconfig.nvim", "neovim/nvim-lspconfig",
               "hrsh7th/nvim-cmp", "hrsh7th/cmp-nvim-lsp", "hrsh7th/cmp-buffer",
               "tpope/vim-sleuth", "skippyr/flamerial.nvim",
               "tpope/vim-commentary", "mhinz/vim-signify","tpope/vim-surround",
               "ryanoasis/vim-devicons", {
                    "windwp/nvim-autopairs",
                    config = function()
                        require("nvim-autopairs").setup()
                    end
                }, {
                    "lukas-reineke/indent-blankline.nvim",
                    config = function()
                        require("indent_blankline").setup()
                        vim.g.indent_blankline_char = "¦"
                    end
                }, {
                    "akinsho/bufferline.nvim",
                    tag = "*",
                    requires = 'nvim-tree/nvim-web-devicons',
                    config = function()
                        require("bufferline").setup()
                    end
                }, {
                    "vim-airline/vim-airline",
                    config = function()
                        vim.cmd("set noshowmode")
                        vim.g.airline_powerline_fonts = 1
                    end
                }, {
                    "iamcco/markdown-preview.nvim",
                    run = function()
                        vim.fn["mkdp#util#install"]()
                    end
                },
    },
    lsp_servers = {"tsserver", "html", "cssls", "rust_analyzer", "lua_ls",
                   "gopls", "clangd"}
})

