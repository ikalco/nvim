local lsp_zero = require("lsp-zero")

local lsp_attach = function(client, bufnr)
	-- see :help lsp-zero-keybindings
	-- to learn the available actions
	lsp_zero.default_keymaps({ buffer = bufnr })
	lsp_zero.buffer_autoformat()
end

-- not sure if this is needed but description of what it does sounds nice
vim.diagnostic.config({
	virtual_text = true
})

lsp_zero.extend_lspconfig({
	capabilities = require("cmp_nvim_lsp").default_capabilities(),
	lsp_attach = lsp_attach,
	float_border = "rounded",
	sign_text = true,
})

local lsp_configs = require("plugins.configs.lsp")
for lsp_name, opts in pairs(lsp_configs) do
	lsp_configs[lsp_name] = function()
		require("lspconfig")[lsp_name].setup(opts)
	end
end
