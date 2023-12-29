return {
    {
        "nvim-tree/nvim-tree.lua",
        dependencies = {
            "nvim-tree/nvim-web-devicons",
        },
        config = function()
            local opts = {
                sort = {
                    sorter = "case_sensitive",
                },
                view = {
                    side = "right",
                    width = 35,
                },
                renderer = {
                    group_empty = true,
                },
                filters = {
                    dotfiles = false,
                    custom = { '^.git$' },
                },
                git = {
                    enable = true,
                    ignore = false,
                    timeout = 500,
                },
            }

            require("nvim-tree").setup(opts)

            vim.keymap.set({"n", "v", "x"}, "<leader>et", ":NvimTreeToggle<CR>")
            vim.keymap.set({"n", "v", "x"}, "<leader>ef", ":NvimTreeFindFile<CR>")
        end
    },
}
