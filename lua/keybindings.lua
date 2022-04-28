vim.g.mapleader = ' '

local keymap = vim.api.nvim_set_keymap
keymap('n', '<c-s>', ':w<CR>', {})
keymap('i', '<c-s>', ':<Esc>:w<CR>a', {})
keymap('i', 'jk', '<Esc>', {})
local opts = { noremap = true }
keymap('n', '<c-j>', '<c-w>j', {})
keymap('n', '<c-h>', '<c-w>h', {})
keymap('n', '<c-k>', '<c-w>k', {})
keymap('n', '<c-l>', '<c-w>l', {})
keymap('n', '<leader>w', '<cmd>update<cr>', {})
keymap('n', '<leader>p', ':Telescope find_files hidden=true theme=get_dropdown<cr>', {})
keymap('n', '<leader>gr', ':Telescope live_grep theme=get_dropdown<cr>', {})
keymap('n', '<leader>b', ':Telescope buffers theme=get_dropdown<cr>', {})
keymap('n', '<leader>h', ':Telescope oldfiles theme=get_dropdown<cr>', {})
keymap('n', '<leader>gb', ':Telescope git_branches theme=get_dropdown<cr>', {})



