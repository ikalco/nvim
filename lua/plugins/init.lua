local plugins = {
	{
		"catppuccin/nvim",
		name = "catppuccin",
		config = function()
			require("plugins.configs.catppuccin")
		end
	},
	{
		'freddiehaddad/feline.nvim',
		dependencies = {
			{ "nvim-tree/nvim-web-devicons", opts = {} },
			{ "lewis6991/gitsigns.nvim",     opts = {} }
		},
		config = function()
			require("feline").setup({
				components = require('catppuccin.groups.integrations.feline').get(),
			})
		end
	},
	{
		"tpope/vim-fugitive",
		init = function()
			require("core.utils").load_mapping("vim_fugitive")
		end
	},
	{
		"nvim-telescope/telescope.nvim",
		dependencies = { "nvim-lua/plenary.nvim" },
		init = function()
			require("core.utils").load_mapping("telescope")
		end
	},
	{
		"nvim-treesitter/nvim-treesitter",
		build = ":TSUpdate",
		config = function()
			require("plugins.configs.treesitter")
		end
	},
	{
		"VonHeikemen/lsp-zero.nvim",
		dependencies = {
			-- LSP support
			"neovim/nvim-lspconfig",
			"williamboman/mason.nvim",
			"williamboman/mason-lspconfig.nvim",

			-- Autocompletion
			"hrsh7th/nvim-cmp",
			"hrsh7th/cmp-buffer",
			"hrsh7th/cmp-path",
			"hrsh7th/cmp-nvim-lua",
			"hrsh7th/cmp-nvim-lsp",
			"saadparwaiz1/cmp_luasnip",

			-- Snippets
			"L3MON4D3/LuaSnip",
			'rafamadriz/friendly-snippets'
		},
		config = function()
			require("plugins.configs.lsp_zero")
		end
	},
	{
		"williamboman/mason-lspconfig.nvim",
		config = function()
			require("plugins.configs.mason_lspconfig")
		end
	},
	{
		"windwp/nvim-autopairs",
		event = "InsertEnter",
		opts = {}
	},
	{
		"numToStr/Comment.nvim",
		init = function()
			require("core.utils").load_mapping("comment")
		end
	}
}

local config = require("plugins.configs.lazy_nvim")

require("lazy").setup(plugins, config)
