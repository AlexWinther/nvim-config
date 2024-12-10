-- Highlight yanked section
vim.api.nvim_create_autocmd('TextYankPost', {
  desc = 'Highlight when yanking (copying) text',
  group = vim.api.nvim_create_augroup('kickstart-highlight-yank', { clear = true }),
  callback = function()
    vim.highlight.on_yank()
  end,
})

vim.api.nvim_create_autocmd('BufEnter', {
  desc = 'update laststatus for lualine global statusline to work',
  group = vim.api.nvim_create_augroup('global-lualine', { clear = true }),
  callback = function()
    vim.opt.laststatus = 3
  end,
})

vim.api.nvim_create_autocmd({ 'BufReadPost' }, {
  pattern = { '*' },
  callback = function()
    if vim.fn.line '\'"' > 1 and vim.fn.line '\'"' <= vim.fn.line '$' then
      vim.api.nvim_exec('normal! g\'"', false)
    end
  end,
})
