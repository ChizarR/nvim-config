local status, kanagawa = pcall(require, 'kanagawa')

if (not status) then
  print('Kanagawa colorscheme is not installed')
  return
end

kanagawa.setup({
  undercurl = true,           -- enable undercurls
  commentStyle = { italic = true },
  functionStyle = {},
  keywordStyle = { 
    italic = false,
    bold = false
  },
  statementStyle = { bold = false },
  typeStyle = {},
  variablebuiltinStyle = { italic = false},
  specialReturn = true,       -- special highlight for the return keyword
  specialException = true,    -- special highlight for exception handling keywords
  transparent = true,        -- do not set background color
  dimInactive = true,        -- dim inactive window `:h hl-NormalNC`
  globalStatus = true,       -- adjust window separators highlight for laststatus=3
  terminalColors = true,      -- define vim.g.terminal_color_{0,17}
  colors = {},
  overrides = {},
  theme = 'default'
})

vim.cmd('colorscheme kanagawa')
