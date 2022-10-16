local set = vim.opt
local api = vim.api

api.nvim_set_hl(0, "Normal", { guibg=none, ctrembg=none })
api.nvim_set_hl(0, "NonText", { guibg=none, ctrembg=none })

set.cursorline = true
set.termguicolors = true
set.colorcolumn = "80"
set.winblend = 0
set.wildoptions = "pum"
set.pumblend = 6
set.background = "dark"
