require("nvim-treesitter.configs").setup({
	ensure_installed = {
		"typescript",
		"javascript",
		"tsx",
		"css",
		"html",
		"json",
		"lua",
		"python",
		"dockerfile",
		"bash",
		"yaml",
		"xml",
	},
	sync_install = false,
	auto_install = false,
	highlight = {
		enable = true,
	},
	context_commentstring = {
		enable = true,
	},
	autotag = {
		enable = true,
		enable_rename = true,
		enable_close_on_slash = false,
	},
})
