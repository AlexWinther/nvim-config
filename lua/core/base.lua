-- Term colors
vim.o.termguicolors = true
vim.o.swapfile = false

-- Indenting settings
vim.opt.breakindent = true
vim.opt.tabstop = 4
vim.opt.shiftwidth = 4
vim.opt.expandtab = true
vim.opt.scrolloff = 12
vim.opt.sidescrolloff = 20

-- Line numbering
vim.opt.nu = true
vim.opt.relativenumber = true

-- Optional mouse control
vim.opt.mouse = "a"

-- Inc search and casing
vim.opt.ignorecase = true
vim.opt.smartcase = true
vim.opt.hlsearch = true
vim.opt.incsearch = true

-- Disable wrap
vim.opt.wrap = false

-- Undo settings
if not vim.g.vscode then
    vim.opt.undofile = true
    vim.opt.undodir = vim.fn.expand("~/.undodir")
    vim.opt.undolevels = 1000
    vim.opt.undoreload = 10000
end

-- Split settings
vim.opt.splitbelow = true
vim.opt.splitright = true

local augroup = vim.api.nvim_create_augroup

local highlight_group = augroup("YankHighlight", { clear = true })
vim.api.nvim_create_autocmd("TextYankPost", {
    callback = function()
        vim.highlight.on_yank()
    end,
    group = highlight_group,
    pattern = "*",
})

local AlexWinthterGroup = augroup('AlexWinthter', {})
vim.api.nvim_create_autocmd({"BufWritePre"}, {
    group = AlexWinthterGroup,
    pattern = "*",
    command = [[%s/\s\+$//e]],
})

if not vim.g.vscode then
    vim.g.netrw_browse_split = 0
    vim.g.netrw_banner = 0
    vim.g.netrw_winsize = 25
end
