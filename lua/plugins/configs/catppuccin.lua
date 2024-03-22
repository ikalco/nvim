local opts = {
	integrations = {
		treesitter = true,
		gitsigns = true,
		telescope = {
			enabled = true
		}
	},
	color_overrides = {
		mocha = {
			base = "#0a0a1a"
		}
	},
	native_lsp = {
		enabled = true,
		virtual_text = {
			errors = { "italic" },
			hints = { "italic" },
			warnings = { "italic" },
			information = { "italic" },
		},
		underlines = {
			errors = { "underline" },
			hints = { "underline" },
			warnings = { "underline" },
			information = { "underline" },
		},
		inlay_hints = {
			background = true,
		},
	},
}

require("catppuccin").setup(opts)
