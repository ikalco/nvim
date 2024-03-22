local lsp = require('lsp-zero')

lsp.on_attach(function(client, bufnr)
	-- see :help lsp-zero-keybindings
	-- to learn the available actions
	lsp.default_keymaps({ buffer = bufnr })
	lsp.buffer_autoformat()
end)

-- not sure if this is needed but description of what it does sounds nice
vim.diagnostic.config({
	virtual_text = true
})
