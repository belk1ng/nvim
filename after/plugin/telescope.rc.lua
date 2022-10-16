local status, telescope = pcall(require, "telescope")
if (not status) then return end
local actions = require('telescope.actions')
local builtin = require("telescope.builtin")

local function telescope_buffer_dir()
  return vim.fn.expand('%:p:h')
end

local fb_actions = require "telescope".extensions.file_browser.actions
local keymap = vim.keymap

telescope.setup {
  defaults = {

    prompt_prefix = "    ",                                                                                         
    selection_caret = "    ",                                                                                       
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
    path_display = { "truncate" },
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
        ["q"] = actions.close
      },
    },
  },
  extensions = {
    file_browser = {
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
}

telescope.load_extension("file_browser")

keymap.set('n', ';f',
  function()
    builtin.find_files({
      no_ignore = false,
      hidden = true
    })
  end)
keymap.set('n', '<leader>fg', function()
  builtin.live_grep()
end)
keymap.set('n', '<leader>ff', function()
  builtin.find_files()
end)
keymap.set('n', '<leader>fd', function()
  builtin.diagnostics()
end)
keymap.set("n", "<C-b>", function()
  telescope.extensions.file_browser.file_browser({
    path = "%:p:h",
    cwd = telescope_buffer_dir(),
    respect_gitignore = false,
    hidden = true,
    grouped = true,
    previewer = false,
    initial_mode = "normal",
  })
end)
