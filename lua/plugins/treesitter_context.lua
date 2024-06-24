return {
	"nvim-treesitter/nvim-treesitter-context",

	config = function ()
		require("treesitter-context").setup({
			separator = '-'
		})
    -- hi TreesitterContextBottom gui=underline guisp=Grey
    -- hi TreesitterContextLineNumberBottom gui=underline guisp=Grey
	end
}
