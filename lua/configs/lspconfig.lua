-- load defaults i.e lua_lsp
require("nvchad.configs.lspconfig").defaults()

local lspconfig = require "lspconfig"

-- EXAMPLE
-- local servers = { "html", "harper-ls", "cssls", "phpactor", "some-sass-language-server", "clangd",
--   "css-variables-language-server",
--   "dockerfile-language-server", "fixjson", "cpptools", "htmlhint", "cmakelang", "jsonld-lsp",
--   "intelephense", "phpcs", "rust-analyzer", "yaml-language-server", "style-lint",
--   "sql-formatter","vue-language-server", "twigcs", "twig-cs-fixer", "twiggy-language-server", "vtsls" }
local servers = { "stimulus-language-server", "cssls", "clangd", "intelephense" }
local nvlsp = require "nvchad.configs.lspconfig"

-- lsps with default config
for _, lsp in ipairs(servers) do
  lspconfig[lsp].setup {
    on_attach = nvlsp.on_attach,
    on_init = nvlsp.on_init,
    capabilities = nvlsp.capabilities,
  }
end

-- configuring single server, example: typescript
-- lspconfig.ts_ls.setup {
--   on_attach = nvlsp.on_attach,
--   on_init = nvlsp.on_init,
--   capabilities = nvlsp.capabilities,
-- }
-- lspconfig.html.setup {}
