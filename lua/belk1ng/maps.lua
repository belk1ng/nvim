local g = vim.g
local keymap = vim.keymap
local api = vim.api

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
keymap.set("i", "<S-Down>", ":move +1<CR>")
keymap.set("i", "<S-Up>", ":move -2<CR>")


-- Moving in insert mode
keymap.set("i", "<C-j>", "<Down>", { noremap = true })
keymap.set("i", "<C-k>", "<Up>", { noremap = true })
keymap.set("i", "<C-h>", "<Left>", { noremap = true })
keymap.set("i", "<C-l>", "<Right>", { noremap = true })

-- Save
keymap.set("n", "<C-s>", ":w<CR>", { noremap = true })

api.nvim_set_keymap(
  "n",
  "<space>fb",
  ":Telescope file_browser<CR>",
  { noremap = true }
)
