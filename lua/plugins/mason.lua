require("mason").setup({
	ui = {
		icons = {
			package_installed = "✓",
			package_pending = "➜",
			package_uninstalled = "✗",
		},
	},
})

require("mason-lspconfig").setup({
	ensure_installed = {
		"lua_ls",
		"pyright",
		"tsserver",
		"cssls",
		"html",
		"eslint",
		"dockerls",
		"jsonls",
		"remark_ls",
		"sqlls",
		"vuels",
		"yamlls",
		"lua_ls",
		"graphql",
		"denols",
		"bashls",
		"angularls",
	},
	automatic_installation = false,
})

require("mason-null-ls").setup({
	ensure_installed = {
		"prettierd", -- ts/js formatter
		"eslint_d", -- ts/js linter
		"autopep8", -- python formatter
		"flake8", -- python linter
		"stylua", -- lua formatter,
	},
	automatic_installation = true,
})
