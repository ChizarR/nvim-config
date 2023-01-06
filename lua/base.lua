vim.cmd('autocmd!')

vim.scriptencoding = 'utf-8'
vim.opt.fileencoding = 'utf-8'
vim.opt.encoding = 'utf-8'

vim.opt.number = true
vim.opt.numberwidth = 3
vim.opt.relativenumber = true

vim.opt.title = true
vim.opt.cursorline = true
vim.opt.autoindent = true
vim.opt.hlsearch = true
vim.opt.backup = false
vim.opt.showcmd = true
vim.opt.cmdheight = 1
vim.opt.expandtab = true
vim.opt.scrolloff = 10
vim.opt.shell = 'zsh'
vim.opt.ignorecase = true
vim.opt.smarttab = true
vim.opt.breakindent = true
vim.opt.shiftwidth = 4
vim.opt.tabstop = 4
vim.opt.ai = true
vim.opt.si = true
vim.opt.wrap = false
vim.opt.laststatus = 1
vim.opt.pumheight = 3
vim.opt.path:append { '**' } -- Search files down into subfolders


-- Turn off past mode when leaving indert
vim.api.nvim_create_autocmd("InsertLeave", {
  pattern = '*',
  command = "set nopaste"
})

-- Add asterics in block comments
vim.opt.formatoptions:append { 'r' }
