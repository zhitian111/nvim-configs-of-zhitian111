require("mason").setup({
	ui = {
		icons = {
			package_installed = "√",
			package_pending = "→",
			package_uninstalled = "×",
		},
	},
})

require("mason-lspconfig").setup({
	ensure_installed = {
		"lua_ls", -- lua
		"ast_grep", -- c
		"harper_ls", -- c++
		"clangd",
		"cmake", -- cmake
		"cssls", -- css
		"bashls", -- bash
		"dockerls", -- docker
		"flux_lsp", -- flux
		"html", -- html
		"jdtls", -- java
		"eslint", -- javascript
		"jsonls", -- json
		"ltex", -- latex
		-- "grammarly", -- markdown
		"spectral", -- openapi
		"glsl_analyzer", -- opengl
		"pyright", -- python
		"sqlls", -- sql
		"glint", -- typescript
		"lemminx", -- xml
		"yamlls", -- yaml
		"rust_analyzer", -- rust
		"gopls", -- go
		"ts_ls", -- typescript
	},
})

local capabilities = require("cmp_nvim_lsp").default_capabilities()
require("lspconfig").lua_ls.setup({
	capabilities = capabilities,
})
require("lspconfig").clangd.setup({
	capabilities = capabilities,
	cmd = { "clangd", "--background-index" },
})
require("lspconfig").rust_analyzer.setup({
	capabilities = capabilities,
	cmd = { "rust-analyzer" },
})
require("lspconfig").gopls.setup({
	capabilities = capabilities,
})
require("lspconfig").html.setup({
	capabilities = capabilities,
})
require("lspconfig").cssls.setup({
	capabilities = capabilities,
})
require("lspconfig").jsonls.setup({
	capabilities = capabilities,
})
require("lspconfig").bashls.setup({
	capabilities = capabilities,
})
require("lspconfig").dockerls.setup({
	capabilities = capabilities,
})
require("lspconfig").html.setup({
	capabilities = capabilities,
})
require("lspconfig").jdtls.setup({
	capabilities = capabilities,
})
require("lspconfig").eslint.setup({
	capabilities = capabilities,
})
require("lspconfig").ltex.setup({
	capabilities = capabilities,
})
require("lspconfig").pyright.setup({
	capabilities = capabilities,
})
require("lspconfig").sqlls.setup({
	capabilities = capabilities,
})
require("lspconfig").lemminx.setup({
	capabilities = capabilities,
})
require("lspconfig").yamlls.setup({
	capabilities = capabilities,
})
require("lspconfig").spectral.setup({
	capabilities = capabilities,
})
require("lspconfig").glslls.setup({
	capabilities = capabilities,
})
-- require("lspconfig").grammarly.setup({
-- 	capabilities = capabilities,
-- })
