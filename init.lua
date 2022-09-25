require('base')
require('highlights')
require('maps')
require('plugins')

vim.cmd('set signcolumn=yes')
vim.cmd('autocmd vimenter * hi Normal guibg=NONE ctermbg=NONE')
vim.cmd[[
  let g:lightline = { 'colorscheme': 'darculaOriginal' }
  colorscheme darcula
]]
