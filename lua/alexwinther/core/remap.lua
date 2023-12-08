vim.g.mapleader = ' '

-- conciseness
local keymap = vim.keymap
local vcmd = vim.cmd

-- remove <C-z> closing nvim
keymap.set('n', '<C-z>', '<nop>')

-- jk as <esc> in insert mode
keymap.set('i', 'jk', '<esc>')

-- save with leader
keymap.set('n', '<leader>w', vcmd.w)

-- Centering on scroll
keymap.set('n', '<C-d>', '<C-d>zz')
keymap.set('n', '<C-u>', '<C-u>zz')

-- Move selected line / block of text in visual mode
keymap.set('x', 'K', ":move '<-2<CR>gv-gv")
keymap.set('x', 'J', ":move '>+1<CR>gv-gv")

-- Remains visual mode after shifting
keymap.set('v', '<S-tab>', '<gv')
keymap.set('v', '<tab>', '>gv')

-- Clear highlights
keymap.set('n', '<leader>h', vcmd.noh)

-- increment/decrement numbers
keymap.set('n', '<leader>+', '<C-a>', { desc = 'Increment number' }) -- increment
keymap.set('n', '<leader>-', '<C-x>', { desc = 'Decrement number' }) -- decrement

-- vim split management
keymap.set('n', '<leader>sv', '<C-w>v', { desc = 'Split window vertically' }) -- split window vertically
keymap.set('n', '<leader>sh', '<C-w>s', { desc = 'Split window horizontally' }) -- split window horizontally
keymap.set('n', '<leader>se', '<C-w>=', { desc = 'Make splits equal size' }) -- make split windows equal width & height
keymap.set('n', '<leader>sx', '<cmd>close<CR>', { desc = 'Close current split' }) -- close current split window

-- vim tab management
keymap.set('n', '<leader>to', '<cmd>tabnew<CR>', { desc = 'Open new tab' }) -- open new tab
keymap.set('n', '<leader>tx', '<cmd>tabclose<CR>', { desc = 'Close current tab' }) -- close current tab
keymap.set('n', '<leader>tn', '<cmd>tabn<CR>', { desc = 'Go to next tab' }) --  go to next tab
keymap.set('n', '<leader>tp', '<cmd>tabp<CR>', { desc = 'Go to previous tab' }) --  go to previous tab
keymap.set('n', '<leader>tf', '<cmd>tabnew %<CR>', { desc = 'Open current buffer in new tab' }) --  move current buffer to new tab

-- Diagnostic keymaps
keymap.set('n', '[d', vim.diagnostic.goto_prev, { desc = 'Go to previous diagnostic message' })
keymap.set('n', ']d', vim.diagnostic.goto_next, { desc = 'Go to next diagnostic message' })

-- Use ctrl-[hjkl] to select the active split!
keymap.set('n', '<C-h>', '<C-w>h', { silent = true })
keymap.set('n', '<C-j>', '<C-w>j', { silent = true })
keymap.set('n', '<C-k>', '<C-w>k', { silent = true })
keymap.set('n', '<C-l>', '<C-w>l', { silent = true })

keymap.set('n', '<leader><C-R>', ':12sp<CR>:term python %<CR>', { silent = true })
keymap.set('n', '<C-W>', ':bd!<CR>', { silent = true })
