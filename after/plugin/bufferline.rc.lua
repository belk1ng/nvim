local status, bufferline = pcall(require, "bufferline")
if (not status) then return end

bufferline.setup({
  options = {
    mode = "tabs",
    separator_style = "thin",
    always_show_bufferline = true,
    show_buffer_close_icons = false,
    show_close_icon = false,
    color_icons = true
  },
})

vim.keymap.set('n', '<C-l>', '<Cmd>BufferLineCycleNext<CR>', {})
vim.keymap.set('n', '<C-h>', '<Cmd>BufferLineCyclePrev<CR>', {})
