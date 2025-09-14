require("nvchad.configs.lspconfig").defaults()

-- In your LSP setup file (e.g., lua/lsp/init.lua)

local servers = { "html", "cssls", "gopls", "clangd" }
vim.lsp.enable(servers)

-- read :h vim.lsp.config for changing options of lsp servers 
