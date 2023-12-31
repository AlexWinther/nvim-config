return {
	"williamboman/mason.nvim",
	dependencies = {
		"williamboman/mason-lspconfig.nvim",
		"jayp0521/mason-null-ls.nvim",
	},
	config = function()
		-- import mason
		local mason = require("mason")

		-- import mason-lspconfig
		local mason_lspconfig = require("mason-lspconfig")

		-- import mason-null-ls
		local mason_null_ls = require("mason-null-ls")

		-- enable mason and configure icons
		mason.setup({
			ui = {
				icons = {
					package_installed = "✓",
					package_pending = "➜",
					package_uninstalled = "✗",
				},
			},
		})

		mason_lspconfig.setup({
			-- list of servers for mason to install
			ensure_installed = {
				"jdtls",
				"rust_analyzer",
				"efm",
				"lua_ls",
				"pyright",
				"clangd",
			},
			-- auto-install configured servers (with lspconfig)
			automatic_installation = true, -- not the same as ensure_installed
		})

		mason_null_ls.setup({
			-- list of formatters & linters for mason to install
			ensure_installed = {
				"stylua", -- lua formatter
				"black", -- python formatter
				"autopep8", -- python formatter
				"clang_format", -- c/c++ formatter
			},
			-- auto-install configured servers (with lspconfig)
			automatic_installation = true,
			handlers = {
				["*.lua"] = { "stylua" },
				["*.py"] = { "black", "autopep8" },
				["*.c"] = { "clang_format" },
				["*.cpp"] = { "clang_format" },
				["*.h"] = { "clang_format" },
				["*.rs"] = { "rustfmt" },
			},
		})
	end,
}
