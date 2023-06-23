-- A module that contains operations to setup up LSP servers.

local module = {}
local cmp = require("cmp")
local lsp_config = require("lspconfig")

-- This is a table with the settings to be used by the `cmp` plugin, which
-- will handle the auto-complete menu.
local cmp_settings = {
  -- A list of sources where it will get information to show to the user.
  --
  -- It will use the ones coming from the current file (buffer) and LSP servers
  -- (nvim_lsp).
  sources = {
    {name = "buffer"},
    {name = "nvim_lsp"}
  },
  -- A list containing all the keymaps to be used to control it.
  -- They are the same defined in the default instructions, which can be found
  -- here:
  -- https://github.com/hrsh7th/nvim-cmp
  mapping = cmp.mapping.preset.insert({
    ["<C-b>"] = cmp.mapping.scroll_docs(-4),
    ["<C-f>"] = cmp.mapping.scroll_docs(4),
    ["<C-Space>"] = cmp.mapping.complete(),
    ["<C-e>"] = cmp.mapping.abort(),
    ["<CR>"] = cmp.mapping.confirm({select = true})
  })
}

-- This is a table with the settings to be used by all the LSP servers.
local lsp_server_settings = {
  -- The `on_attach` function gets executed every time an LSP server starts
  -- up. This one will setup the keymaps to control interactions with the
  -- server.
  on_attach = function()
    local keymaps = {
      -- Opens the documentation.
      ["K"] = vim.lsp.buf.hover,
      -- Goes to the definition of what is under the cursor.
      ["gd"] = vim.lsp.buf.definition,
      -- Goes to the first implementation of what is under under the cursor.
      ["gi"] = vim.lsp.buf.implementation
    }
    for key, action in pairs(keymaps) do
      -- All the keymaps are set to run in normal mode, which is delegated
      -- by the character `n` used.
      vim.keymap.set("n", key, action, {})
    end
  end
}

-- Setup the LSP servers and ensure that they are installed automatically
-- whenever Neovim is started.
function module.setup_lsp_servers(lsp_servers)
  -- Initiates the `mason` and `mason-lspconfig` plugins and ensure that all the
  -- LSP servers are installed automatically.
  require("mason").setup()
  require("mason-lspconfig").setup({ensure_installed = lsp_servers})

  -- Setup the `cmp` plugin using the settings previously defined.
  cmp.setup(cmp_settings)

  -- Setup each LSP server with the settings previously defined.
  for _, lsp_server in pairs(lsp_servers) do
    lsp_config[lsp_server].setup(lsp_server_settings)
  end
end

return module
