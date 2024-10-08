return {
	"nvim-treesitter/nvim-treesitter",
	build = ":TSUpdate",

	config = function ()
	local configs = require("nvim-treesitter.configs")
	configs.setup({
		ensure_installed = {
			"c", "cpp", "cmake", "dockerfile", "gitcommit", "gitignore", "lua",
            "markdown", "markdown_inline", "python", "rust", "vim", "vimdoc", "zig"
		},

		sync_install = false,

		auto_install = false,

		highlight = {
			enable = true
		},
		indent = {
			enable = true
		},
	})
	end
}
