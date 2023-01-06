require('base')
require('highlights')
require('maps')
require('plugins')

vim.cmd('set signcolumn=yes')
vim.cmd('set colorcolumn=120')
vim.cmd('autocmd vimenter * hi Normal guibg=NONE ctermbg=NONE')
-- vim.cmd('colorscheme habamax')
