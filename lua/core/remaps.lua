-- map leader
vim.g.mapleader = ' '
vim.g.maplocalleader = ' '

-- conciseness
local keymap = vim.keymap
local vcmd = vim.cmd

-- open terminal
keymap.set('n', '<leader>et', ':Ex<CR>', { desc = 'Open netrw' })

-- Unmap space
keymap.set({ 'n', 'v' }, '<Space>', '<Nop>', { silent = true })

-- remove <C-z> closing nvim
keymap.set('n', '<C-z>', '<nop>')

-- jk as <esc> in insert mode
keymap.set('i', 'jk', '<esc>')

-- save with leader
keymap.set('n', '<leader>w', vcmd.w)

-- Centering on scroll
keymap.set('n', '<C-d>', '<C-d>zz')
keymap.set('n', '<C-u>', '<C-u>zz')

-- Keep highlight after indentation
keymap.set('v', '>', '>gv')
keymap.set('v', '<', '<gv')

-- Move selected line / block of text in visual mode
keymap.set('x', 'K', ":move '<-2<CR>gv-gv")
keymap.set('x', 'J', ":move '>+1<CR>gv-gv")

-- Clear highlights
keymap.set('n', '<leader>ch', vcmd.noh)

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
if not vim.g.vscode then
    keymap.set('n', '<C-h>', '<Cmd>NvimTmuxNavigateLeft<CR>', { silent = true })
    keymap.set('n', '<C-j>', '<Cmd>NvimTmuxNavigateDown<CR>', { silent = true })
    keymap.set('n', '<C-k>', '<Cmd>NvimTmuxNavigateUp<CR>', { silent = true })
    keymap.set('n', '<C-l>', '<Cmd>NvimTmuxNavigateRight<CR>', { silent = true })
end

-- Remap for dealing with word wrap
keymap.set('n', 'k', "v:count == 0 ? 'gk' : 'k'", { expr = true, silent = true })
keymap.set('n', 'j', "v:count == 0 ? 'gj' : 'j'", { expr = true, silent = true })

