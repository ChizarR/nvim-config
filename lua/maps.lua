local tele_builtin = require "telescope.builtin"
local tree =  require "nvim-tree"

local keymap = require "vim.keymap"
local opts = { noremap = true, silent = true }

-- Set leader key
keymap.set('', '<Space>', '<Nop>', opts)
vim.g.mapleader = ' '
vim.g.maplocalleader = ' '

-- Normal mode
-- New tab
keymap.set('n', 'te', ':tabedit<Return>', opts)

-- Split window
keymap.set('n', 'ss', ':split<Return><C-w>w', opts)
keymap.set('n', 'sv', ':vsplit<Return><C-w>w', opts)

-- Move between splited windows
keymap.set('n', '<C-h>', '<C-w>h', opts)
keymap.set('n', '<C-j>', '<C-w>j', opts)
keymap.set('n', '<C-k>', '<C-w>k', opts)
keymap.set('n', '<C-l>', '<C-w>l', opts)

-- Colorcolumn
keymap.set('n', '<leader>cu', ':set colorcolumn=80<Return>', opts)
keymap.set('n', '<leader>cd', ':set colorcolumn=0<Return>', opts)

-- File manager
-- keymap.set('n', '<leader>e', ':Lex 25<cr>', opts)

-- Telescope
keymap.set('n', '<leader>ff', tele_builtin.find_files, opts)
keymap.set('n', '<leader>fg', tele_builtin.live_grep, {})
keymap.set('n', '<leader>fb', tele_builtin.buffers, {})
keymap.set('n', '<leader>fh', tele_builtin.help_tags, {})

-- Nvim-Tree
keymap.set('n', '<leader>e', ':NvimTreeFindFileToggle<cr>')

-- Resize windows
keymap.set('n', '<C-Up>', ':resize +2<CR>', opts)
keymap.set('n', '<C-Down>', ':resize -2<CR>', opts)
keymap.set('n', '<C-Left>', ':vertical resize +2<CR>', opts)
keymap.set('n', '<C-Right>', ':vertical resize -2<CR>', opts)

-- Buffer navigation
keymap.set('n', '<S-h>', ':bprevious<CR>', opts)
keymap.set('n', '<S-l>', ':bnext<CR>', opts)

-- Visual mode
-- Stay in indent mode
keymap.set('v', '<', '<gv', opts)
keymap.set('v', '>', '>gv', opts)

-- Move text up and down
keymap.set('v', '<A-j>', ':m .+1<CR>==', opts)
keymap.set('v', '<A-k>', ':m .-2<CR>==', opts)
keymap.set('v', 'p', '"_dP', opts)

-- Visual Block --
-- Move text up and down
keymap.set('x', 'J', ":move '>+1<CR>gv-gv", opts)
keymap.set('x', 'K', ":move '<-2<CR>gv-gv", opts)
keymap.set('x', '<A-j>', ":move '>+1<CR>gv-gv", opts)
keymap.set('x', '<A-k>', ":move '<-2<CR>gv-gv", opts)

-- Insert mode --
-- Exit insert mode with 'jk'
-- keymap.set('i', 'jk', '<ESC>', opts)
