vim.g.mapleader = " "
vim.keymap.set("n", "<leader>pv", vim.cmd.Ex)

vim.keymap.set('n', '<leader>do', '<cmd>lua vim.diagnostic.open_float()<cr>')
vim.keymap.set('n', '<leader>dp', '<cmd>lua vim.diagnostic.goto_prev()<cr>')
vim.keymap.set('n', '<leader>dn', '<cmd>lua vim.diagnostic.goto_next()<cr>')
