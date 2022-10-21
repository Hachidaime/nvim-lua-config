local map = vim.api.nvim_set_keymap
local opts = { noremap = true, silent = true }

-- vim.g.mapleader = '\\'

map('n', '<TAB>', ':BufferLineCycleNext<CR>', opts)
map('n', '<S-TAB>', ':BufferLineCyclePrev<CR>', opts)

map('n', '<leader>h', '<C-w>h', opts)
map('n', '<leader>j', '<C-w>j', opts)
map('n', '<leader>k', '<C-w>k', opts)
map('n', '<leader>l', '<C-w>l', opts)

map('i', 'jk', '<ESC>', opts)
map('i', 'kj', '<ESC>', opts)
