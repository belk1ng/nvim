local api = vim.api

require('git-conflict').setup({
    highlights = {
    incoming = "DiffText",
    current = "DiffAdd",
  }
})

-- Current
vim.cmd[[hi GitConflictCurrent guibg=#195d70]]
vim.cmd[[hi GitConflictCurrentLabel guibg=#24788f]]

-- Incoming
vim.cmd[[hi GitConflictIncomingLabel guibg=#68217a]]
vim.cmd[[hi GitConflictIncoming guibg=#521461]]

