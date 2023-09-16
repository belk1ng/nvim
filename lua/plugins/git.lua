local status, gitsigns = pcall(require, "gitsigns")
if not status then
	return
end

gitsigns.setup({})

require("git-conflict").setup({
	highlights = {
		incoming = "DiffText",
		current = "DiffAdd",
	},
})

vim.keymap.set("n", "<leader>sc", ":GitConflictListQf<CR>", { noremap = true })

-- Current
vim.cmd([[hi GitConflictCurrent guibg=#195d70]])
vim.cmd([[hi GitConflictCurrentLabel guibg=#24788f]])

-- Incoming
vim.cmd([[hi GitConflictIncomingLabel guibg=#68217a]])
vim.cmd([[hi GitConflictIncoming guibg=#521461]])
