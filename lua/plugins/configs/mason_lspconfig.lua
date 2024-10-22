local lsp = require('lsp-zero')

local opts = {
	ensure_installed = {
		"lua_ls",
		"clangd",
		"ts_ls",
		"jdtls",
		"ruby_lsp",
		"rubocop",
		"pylsp"
	},
	handlers = {
		lsp.default_setup,
	}
}

-- to learn how to use mason.nvim with lsp-zero
-- read this: https://github.com/VonHeikemen/lsp-zero.nvim/blob/v3.x/doc/md/guide/integrate-with-mason-nvim.md
require('mason').setup({})
require("mason-lspconfig").setup(opts)
