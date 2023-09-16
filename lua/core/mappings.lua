local g = vim.g
local keymap = vim.keymap
local api = vim.api

local builtin = require("telescope.builtin")

-- Change leader key
g.mapleader = " "

-- Select all
keymap.set("n", "<C-a>", "gg<S-v>G")

-- Enter command mode
keymap.set("i", "jk", "<ESC>", { noremap = true })

-- Hide search results
keymap.set("n", "<leader>h", ":noh<CR>", { noremap = true })

-- Moving line
keymap.set("n", "<S-Down>", ":move +1<CR>")
keymap.set("n", "<S-Up>", ":move -2<CR>")
keymap.set("v", "<S-Down>", ":m '>+1<CR>gv=gv")
keymap.set("v", "<S-Up>", ":m '<-2<CR>gv=gv")

-- Moving in insert mode
keymap.set("i", "<C-j>", "<Down>", { noremap = true })
keymap.set("i", "<C-k>", "<Up>", { noremap = true })
keymap.set("i", "<C-h>", "<Left>", { noremap = true })
keymap.set("i", "<C-l>", "<Right>", { noremap = true })

-- Telescope navigation
vim.keymap.set("n", "<leader>ff", builtin.find_files, {})
vim.keymap.set("n", "<leader>fg", builtin.live_grep, {})
vim.api.nvim_set_keymap(
	"n",
	"<space>fb",
	":Telescope file_browser path=%:p:h select_buffer=true<CR>",
	{ noremap = true }
)
vim.keymap.set("n", "<leader>st", ":TodoTelescope keywords=TODO,FIX<CR>", {})

-- Buffer line navigation
vim.keymap.set("n", "<C-l>", "<Cmd>BufferLineCycleNext<CR>", {})
vim.keymap.set("n", "<C-h>", "<Cmd>BufferLineCyclePrev<CR>", {})

-- Git
vim.keymap.set("n", "<leader>do", ":DiffviewOpen<CR>", {})
vim.keymap.set("n", "<leader>dc", ":DiffviewClose<CR>", {})
vim.keymap.set("n", "<leader>fh", ":DiffviewFileHistory<CR>", {})

-- Quit and save
vim.keymap.set("n", "<leader>w", ":w<CR>", {})
vim.keymap.set("n", "<leader>x", ":q<CR>", {})

-- Mapping to run Python code
api.nvim_set_keymap("n", "<leader>p", ":!python3.10 %<CR>", { noremap = true })

-- Mapping to run JavaScript code
api.nvim_set_keymap("n", "<leader>j", ":!node %<CR>", { noremap = true })
