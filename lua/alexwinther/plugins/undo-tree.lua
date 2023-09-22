return {
	"mbbill/undotree",
	event = { "BufRead", "BufNewFile" },
	config = function()
		vim.keymap.set("n", "<leader>u", ":UndotreeToggle<CR>", { noremap = true, silent = true })
		vim.g.undotree_WindowLayout = 2
		vim.g.undotree_SetFocusWhenToggle = 1
		vim.g.undotree_DiffAutoOpen = 0
		vim.g.undotree_SplitWidth = 35
	end,
}
