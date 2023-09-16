local telescope = require("telescope")
local actions = require("telescope.actions")
local fb_actions = telescope.extensions.file_browser.actions

telescope.setup({
	defaults = {

		prompt_prefix = "  󰩊  ",
		selection_caret = "  󱞩  ",
		entry_prefix = "  ",

		selection_strategy = "reset",
		sorting_strategy = "ascending",
		layout_strategy = "horizontal",
		layout_config = {
			horizontal = {
				prompt_position = "top",
				preview_width = 0.55,
				results_width = 0.8,
			},
			vertical = {
				mirror = false,
			},
			width = 0.87,
			height = 0.80,
			preview_cutoff = 1,
		},

		file_sorter = require("telescope.sorters").get_fuzzy_file,
		file_ignore_patterns = { "node_modules" },
		generic_sorter = require("telescope.sorters").get_generic_fuzzy_sorter,
		winblend = 0,
		border = {},
		borderchars = { "─", "│", "─", "│", "╭", "╮", "╯", "╰" },
		color_devicons = true,
		set_env = { ["COLORTERM"] = "truecolor" },
		file_previewer = require("telescope.previewers").vim_buffer_cat.new,
		grep_previewer = require("telescope.previewers").vim_buffer_vimgrep.new,
		qflist_previewer = require("telescope.previewers").vim_buffer_qflist.new,
		buffer_previewer_maker = require("telescope.previewers").buffer_previewer_maker,

		mappings = {
			n = {
				["q"] = actions.close,
			},
		},
	},
	extensions = {
		file_browser = {
			hidden = true,
			initial_mode = "normal",
			hijack_netrw = true,
			mappings = {
				["i"] = {},
				["n"] = {
					["a"] = fb_actions.create,
					["m"] = fb_actions.move,
					["r"] = fb_actions.rename,
					["d"] = fb_actions.remove,
				},
			},
		},
	},
})

telescope.load_extension("file_browser")
