-- Setting leader key
vim.g.mapleader = ' '
vim.g.localmapleader = ' '

-- Line numbering
vim.opt.number = true
vim.opt.relativenumber = true

-- Mouse support
vim.opt.mouse = 'a'

-- Don't show the mode
vim.opt.showmode = false

-- Wrap lines with same indentation
vim.opt.breakindent = true
vim.opt.wrap = false
vim.opt.linebreak = true
vim.opt.breakat = ' '

-- Save undo history
vim.opt.undofile = true

-- Search configuration
vim.opt.ignorecase = true
vim.opt.smartcase = true
vim.opt.hlsearch = true

-- Keep signcolumn on by default
vim.opt.signcolumn = 'yes'

-- Decrease update time and timeout before keymap completion
vim.opt.updatetime = 250
vim.opt.timeoutlen = 300

-- Pane splitting configuration
vim.opt.splitright = true
vim.opt.splitbelow = true

-- Whitespace character display
vim.opt.list = true
vim.opt.listchars = { tab = '» ', trail = '·', nbsp = '␣' }

-- Highlight current line
vim.opt.cursorline = true

-- Minimal number of screen lines to keep above and below the cursor.
vim.opt.scrolloff = 12

-- Netrw configuration
vim.g.netrw_liststyle = 0
vim.g.netrw_preview = 1
vim.g.netrw_altv = 0
vim.g.netrw_browse_split = 0
vim.g.netrw_banner = 0
vim.g.netrw_winsize = 25

vim.opt.laststatus = 3
