-- EXAMPLE 
local on_attach = require("nvchad.configs.lspconfig").on_attach
local on_init = require("nvchad.configs.lspconfig").on_init
local capabilities = require("nvchad.configs.lspconfig").capabilities

local lspconfig = require "lspconfig"
local cmp_nvim_lsp = require'cmp_nvim_lsp'
local servers = { "html", "cssls", "pyright", "tsserver", "jdtls", "rust_analyzer", "solargraph", "gopls", "intelephense", "clangd" }

-- lsps with default config
for _, lsp in ipairs(servers) do
  lspconfig[lsp].setup {
    on_attach = on_attach,
    on_init = on_init,
    capabilities = cmp_nvim_lsp.default_capabilities(),
  }
end

--[[ -- typescript 
lspconfig.tsserver.setup {
  on_attach = on_attach,
  on_init = on_init,
  capabilities = cmp_nvim_lsp.default_capabilities(),
  --cmd = { "typescript-language-server", "--stdio" },
}

lspconfig.pyright.setup{
  on_attach = on_attach,
  on_init = on_init,
  capabilities = cmp_nvim_lsp.default_capabilities(),
}

lspconfig.html.setup {
  on_attach = on_attach,
  on_init = on_init,
  capabilities = cmp_nvim_lsp.default_capabilities(),
  --cmd = { "html-languageserver", "--stdio" },
}

-- CSS LSP configuration using vscode-css-languageserver
lspconfig.cssls.setup {
  on_attach = on_attach,
  on_init = on_init,
  capabilities = cmp_nvim_lsp.default_capabilities(),
  --cmd = { 'css-languageserver', '--stdio' },
}
 ]]

