local lspconfig_status, lspconfig = pcall(require, "lspconfig")
if not lspconfig_status then
	return
end

local cmp_nvim_lsp_status, cmp_nvim_lsp = pcall(require, "cmp_nvim_lsp")
if not cmp_nvim_lsp_status then
	return
end

local keymap = vim.keymap
local opts = { noremap = true, silent = true }

keymap.set("n", "<space>e", vim.diagnostic.open_float, opts)
keymap.set("n", "<space>q", vim.diagnostic.setloclist, opts)

local on_attach = function(_, bufnr)
	opts = { noremap = true, silent = true, buffer = bufnr }

	keymap.set("n", "gD", vim.lsp.buf.declaration, opts)
	keymap.set("n", "gd", vim.lsp.buf.definition, opts)
	keymap.set("n", "K", vim.lsp.buf.hover, opts)
	keymap.set("n", "<C-k>", vim.lsp.buf.signature_help, opts)
end

local capabilities = cmp_nvim_lsp.default_capabilities()

local signs = { Error = "", Warn = "", Hint = "󰠠", Info = "" }
for type, icon in pairs(signs) do
	local hl = "DiagnosticSign" .. type
	vim.fn.sign_define(hl, { text = icon, texthl = hl, numhl = "" })
end

local servers = {
	"pyright",
	"tsserver",
	"vuels",
	"graphql",
	"html",
	"jsonls",
	"cssls",
	"dockerls",
	"remark_ls",
	"sqlls",
	"yamlls",
	"lua_ls",
	"bashls",
}

for _, lsp in ipairs(servers) do
	lspconfig[lsp].setup({
		on_attach = on_attach,
		capabilities = capabilities,
		flags = {
			debounce_text_changes = 150,
		},
		root_dir = function()
			return vim.loop.cwd()
		end,
	})
end
