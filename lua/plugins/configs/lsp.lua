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

return M
