local M = {}

M.defaults = function()
	vim.g.mapleader = " "

	-- exit into directory navigation
	vim.keymap.set("n", "<leader>pv", vim.cmd.Ex)

	-- move visual blocks up and down with J and K
	vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")
	vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")

	-- centers subject whenever bindings are pressed
	vim.keymap.set("n", "<C-d>", "<C-d>zz")
	vim.keymap.set("n", "<C-u>", "<C-u>zz")
	vim.keymap.set("n", "n", "nzzzv")
	vim.keymap.set("n", "N", "Nzzzv")

	-- quick keybind for setting file as executable
	vim.keymap.set("n", "<leader>x", "<cmd>!chmod +x %<CR>", { silent = true })

	-- exit terminal
	vim.keymap.set("t", "<C-x>", "<C-\\><C-n>")
	-- vim.keymap.set("c", "W", "noa w")

	M.quickfix()
end

M.quickfix = function()
	-- navigate quickfix lists
	vim.keymap.set("n", "]q", "<cmd>cn<CR>");
	vim.keymap.set("n", "[q", "<cmd>cp<CR>");
end

M.telescope = function()
	local builtin = require("telescope.builtin")

	vim.keymap.set("n", "<C-p>", builtin.git_files, {})
	vim.keymap.set("n", "<leader>pf", builtin.find_files, {})
	vim.keymap.set("n", "<leader>pb", builtin.buffers, {})
	vim.keymap.set("n", "<leader>ps", function()
		-- builtin.grep_string({ search = vim.fn.input("Grep > ") })
		builtin.live_grep({ grep_open_files = true })
	end)
end

M.comment = function()
	vim.keymap.set("n", "<leader>/", function()
		require("Comment.api").toggle.linewise.current()
	end)

	vim.keymap.set("v", "<leader>/", "<ESC><cmd>lua require('Comment.api').toggle.linewise(vim.fn.visualmode())<CR>")
end

M.vim_fugitive = function()
	vim.keymap.set("n", "<leader>gs", vim.cmd.Git)
end

return M
