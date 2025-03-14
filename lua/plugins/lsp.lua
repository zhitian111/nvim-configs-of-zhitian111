require("mason").setup({
    ui = {
        icons = {
            package_installed = '√',
            package_pending = '→',
            package_uninstalled = '×'
        }
    }
})

require("mason-lspconfig").setup{
  ensure_installed = {
    "lua_ls",       -- lua
    "ast_grep",     -- c
    "harper_ls",    -- c++
    "clanged",
    "cmake",        -- cmake
    "css_variables",-- css
    "bashls",       -- bash
    "dockerls",     -- docker
    "flux_lsp",     -- flux
    "html",         -- html
    "jdtls",        -- java
    "eslint",       -- javascript
    "jsonls",       -- json
    "ltex",         -- latex
    "grammarly",    -- markdown
    "vacuum",       -- openapi
    "glsl_analyzer",-- opengl
    "pylyzer",      -- python
    "sqlls",        -- sql
    "glint",        -- typescript
    "lemminx",      -- xml
    "yamlls"        -- yaml
  },
}


local capabilities = require('cmp_nvim_lsp').default_capabilities()

require("lspconfig").sumneko_lua.setup{
  capabilities = capabilities,
}
