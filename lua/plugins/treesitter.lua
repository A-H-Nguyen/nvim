return {
	"nvim-treesitter/nvim-treesitter",
  lazy = false,
	build = ":TSUpdate",

  -- event = { "BufReadPre", "BufNewFile" },
	config = function ()
	-- local configs = require("nvim-treesitter.configs")
	-- configs.setup({
	-- 	ensure_installed = {
	-- 		"c", "cpp", "cmake", "dockerfile", "gitcommit", "gitignore", "lua",
 --            "markdown", "markdown_inline", "python", "rust", "vim", "vimdoc", "zig"
	-- 	},

	-- 	sync_install = false,

	-- 	auto_install = false,

	-- 	highlight = {
	-- 		enable = true
	-- 	},
	-- 	indent = {
	-- 		enable = true
	-- 	},
	-- })
    require('nvim-treesitter').install {
        "c", "cpp", "cmake", "gitcommit", "gitignore", "lua",
        "markdown", "markdown_inline", "python", "rust", "vim", "vimdoc" }
	end
}
