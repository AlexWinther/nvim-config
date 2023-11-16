return {
	"tpope/vim-fugitive",
	dependencies = {
		"tpope/vim-rhubarb",
	},
	config = function()
		vim.keymap.set("n", "<leader>gs", vim.cmd.Git)
		local autocmd = vim.api.nvim_create_autocmd

		local AlexWinther_Fugitive = vim.api.nvim_create_augroup("AlexWinther_Fugitive", {})

		autocmd("BufWinEnter", {
			group = AlexWinther_Fugitive,
			pattern = "*",
			callback = function()
				if vim.bo.ft ~= "fugitive" then
					return
				end

				local bufnr = vim.api.nvim_get_current_buf()
				local opts = { buffer = bufnr, remap = false }
				vim.keymap.set("n", "<leader>P", function()
					vim.cmd.Git("push")
				end, opts)

				-- rebase always
				vim.keymap.set("n", "<leader>p", function()
					vim.cmd.Git({ "pull", "--rebase" })
				end, opts)
			end,
		})
	end,
}
