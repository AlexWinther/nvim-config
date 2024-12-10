return {
  'nvim-tree/nvim-tree.lua',
  version = '*',
  lazy = false,
  dependencies = {
    'nvim-tree/nvim-web-devicons',
  },
  config = function()
    local keymap = vim.keymap -- for concisenes
    -- keymap.set('n', '-', ':NvimTreeToggle<CR>', { desc = 'Toggle Nvim Tree' })
    keymap.set('n', '<leader>e', ':NvimTreeToggle<CR>', { silent = true }) -- toggle file explorer

    -- disable netrw at the very start of your init.lua
    vim.g.loaded_netrw = 1
    vim.g.loaded_netrwPlugin = 1

    -- optionally enable 24-bit colour
    vim.opt.termguicolors = true

    local nvimtree = require 'nvim-tree'
    nvimtree.setup {
      disable_netrw = true,
      hijack_netrw = true,
      respect_buf_cwd = true,
      sync_root_with_cwd = true,
      view = {
        width = 35,
      },
      filters = {
        dotfiles = false,
        custom = { '^.git$' },
      },
      renderer = {
        indent_width = 1,
      },
      git = {
        ignore = false,
      },
    }
  end,
}
