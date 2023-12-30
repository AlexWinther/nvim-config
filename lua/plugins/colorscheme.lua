return {
    { "folke/tokyonight.nvim" },
    { "rose-pine/neovim" },
    {
        -- Theme inspired by Atom
        'catppuccin/nvim',
        priority = 1000,
        config = function()
            vim.cmd.colorscheme 'catppuccin'
        end,
    },
}
