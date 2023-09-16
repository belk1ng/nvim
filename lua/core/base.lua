vim.cmd("autocmd!")

local set = vim.opt

vim.cmd([[colorscheme palenightfall]])
vim.cmd([[set termguicolors]])
vim.cmd([[set noswapfile]])
vim.cmd([[set nospell]])
vim.cmd([[set t_Co=256]])
vim.scriptencoding = "utf-8"
vim.wo.number = true

set.updatetime = 100
set.encoding = "utf-8"
set.title = true
set.autoindent = true
set.smartindent = true
set.hlsearch = true
set.backup = false
set.showcmd = true
set.cmdheight = 1
set.laststatus = 2
set.expandtab = true
set.scrolloff = 10
set.inccommand = "split"
set.ignorecase = true
set.smarttab = true
set.breakindent = true
set.shiftwidth = 2
set.tabstop = 2
set.wrap = true
set.number = true
set.relativenumber = true
set.clipboard = "unnamedplus"
set.cursorline = true
set.termguicolors = true
set.colorcolumn = "80"
set.winblend = 0
set.wildoptions = "pum"
set.pumblend = 6
set.background = "dark"
