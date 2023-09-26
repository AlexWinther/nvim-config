vim.o.termguicolors = true
vim.o.swapfile = false

vim.opt.nu = true
vim.opt.relativenumber = true

vim.opt.mouse = "a"

vim.opt.ignorecase = true
vim.opt.smartcase = true
vim.opt.hlsearch = true
vim.opt.incsearch = true

vim.opt.wrap = false

vim.opt.breakindent = true
vim.opt.tabstop = 4
vim.opt.shiftwidth = 4
vim.opt.expandtab = true

-- Undo settings
vim.opt.undofile = true
vim.opt.undodir = vim.fn.expand("~/.undodir")
vim.opt.undolevels = 1000
vim.opt.undoreload = 10000

-- Split settings
vim.opt.splitbelow = true
vim.opt.splitright = true

local highlight_group = vim.api.nvim_create_augroup("YankHighlight", { clear = true })
vim.api.nvim_create_autocmd("TextYankPost", {
	callback = function()
		vim.highlight.on_yank()
	end,
	group = highlight_group,
	pattern = "*",
})
