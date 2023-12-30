return {
    {
        'rose-pine/neovim',
        priority = 1000,
        config = function()
            vim.cmd.colorscheme 'rose-pine'
        end,
    },
    {
        'folke/tokyonight.nvim',
        -- priority = 1000,
        -- config = function()
        --     vim.cmd.colorscheme 'folke/tokyonight.nvim'
        -- end,
    },
    {
        'catppuccin/nvim',
        -- priority = 1000,
        -- config = function()
        --     vim.cmd.colorscheme 'catppuccin'
        -- end,
    },
}
