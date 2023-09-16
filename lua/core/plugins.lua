local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"

if not vim.loop.fs_stat(lazypath) then
	vim.fn.system({
		"git",
		"clone",
		"--filter=blob:none",
		"https://github.com/folke/lazy.nvim.git",
		"--branch=stable",
		lazypath,
	})
end

vim.opt.rtp:prepend(lazypath)

require("lazy").setup({
	-- GUI
	{ "JoosepAlviste/palenightfall.nvim" },
	{
		"nvim-treesitter/nvim-treesitter",
		dependencies = {
			"JoosepAlviste/nvim-ts-context-commentstring",
		},
	},
	{ "kyazdani42/nvim-web-devicons" },
	{ "nvim-lualine/lualine.nvim" },
	{ "akinsho/nvim-bufferline.lua" },

	-- Language server and autocomplete
	{ "neovim/nvim-lspconfig" },
	{ "jose-elias-alvarez/null-ls.nvim" },
	{ "onsails/lspkind-nvim" },
	{ "hrsh7th/cmp-nvim-lsp" },
	{ "hrsh7th/nvim-cmp" },
	{ "hrsh7th/cmp-buffer" },
	{ "hrsh7th/cmp-path" },
	{ "hrsh7th/cmp-cmdline" },
	{ "hrsh7th/cmp-vsnip" },
	{ "hrsh7th/vim-vsnip" },
	{ "williamboman/mason-lspconfig.nvim" },
	{ "williamboman/mason.nvim" },
	{ "jayp0521/mason-null-ls.nvim" },

	-- Telescope
	{
		"nvim-telescope/telescope.nvim",
		tag = "0.1.3",
		dependencies = { "nvim-lua/plenary.nvim" },
	},
	{ "nvim-telescope/telescope-file-browser.nvim" },

	-- Development
	{ "numToStr/Comment.nvim" },
	{ "windwp/nvim-ts-autotag" },
	{ "windwp/nvim-autopairs" },
	{ "folke/todo-comments.nvim" },
	{ "numToStr/Comment.nvim" },
	{ "norcalli/nvim-colorizer.lua" },
	{ "mattn/emmet-vim" },
	{ "dcampos/cmp-emmet-vim" },

	-- Git
	{ "lewis6991/gitsigns.nvim" },
	{ "akinsho/git-conflict.nvim", version = "*", config = true },
	{ "sindrets/diffview.nvim" },
})
