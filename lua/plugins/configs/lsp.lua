local M = {}

M.lua_ls = {
	settings = {
		Lua = {
			diagnostics = {
				globals = { "vim" }
			}
		}
	}
}

M.clangd = {
	cmd = {
		"clangd",
		"--background-index",
		"--clang-tidy",
		"--header-insertion=never",
		"--completion-style=detailed",
		"--function-arg-placeholders",
		"--fallback-style=llvm"
	}
}

for lsp_name, opts in pairs(M) do
	M[lsp_name] = function()
		require("lspconfig")[lsp_name].setup(opts)
	end
end

return M
