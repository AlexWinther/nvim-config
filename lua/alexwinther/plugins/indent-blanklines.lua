return {
	"lukas-reineke/indent-blankline.nvim",
	event = { "BufRead", "BufNewFile" },
	opts = {
		char = "┊",
		show_trailing_blankline_indent = false,
	},
}
