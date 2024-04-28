return {
	'nvim-telescope/telescope.nvim', 
	tag = '0.1.6',

	dependencies = {
		"nvim-lua/plenary.nvim"
	},

    config = function()
        require('telescope').setup({})
        local builtin = require('telescope.builtin')
       
        vim.keymap.set('n', '<leader>pf', builtin.find_files, {})
       
        vim.keymap.set('n', '<leader>gf', builtin.git_files, {})
       
        -- vim.keymap.set('n', '<leader>lg', builtin.live_grep, {})
       
        vim.keymap.set('n', '<leader>pb', builtin.buffers, {})
       
        vim.keymap.set('n', '<leader>hh', builtin.help_tags, {})
        
        vim.keymap.set('n', '<leader>pp', builtin.planets, {})
    end
}
