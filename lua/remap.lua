vim.g.mapleader = " "

-- Spruce up file navigation
vim.keymap.set("n", "<leader>pv", vim.cmd.Ex)
-- vim.keymap.set("n", "<leader>bp", vim.cmd.bp)
-- vim.keymap.set("n", "<leader>bn", vim.cmd.bn)
vim.keymap.set("n", "<leader>p", vim.cmd.bp)
vim.keymap.set("n", "<leader>n", vim.cmd.bn)

-- Shortcuts for splitting windows
vim.keymap.set("n", "<leader>_", vim.cmd.sp)
vim.keymap.set("n", "<leader>|", vim.cmd.vs)

-- Add keybinds for diagnostics. NOTE: You don't need trouble.nvim to use these!
vim.keymap.set('n', '<leader>do', '<cmd>lua vim.diagnostic.open_float()<cr>')
vim.keymap.set('n', '<leader>dp', '<cmd>lua vim.diagnostic.goto_prev()<cr>')
vim.keymap.set('n', '<leader>dn', '<cmd>lua vim.diagnostic.goto_next()<cr>')

-- buffer-local keybindings
-- these only work if you have an active language server
vim.api.nvim_create_autocmd('LspAttach', {
    desc = 'LSP actions',
    callback = function(event)
        local opts = {buffer = event.buf}

        vim.keymap.set('n', 'K', '<cmd>lua vim.lsp.buf.hover()<cr>', opts)
        vim.keymap.set('n', 'X', '<cmd>lua vim.lsp.buf.code_action()<cr>', opts)

        vim.keymap.set('n', '<leader>gd', '<cmd>lua vim.lsp.buf.definition()<cr>', opts)
        vim.keymap.set('n', '<leader>gD', '<cmd>lua vim.lsp.buf.declaration()<cr>', opts)
        vim.keymap.set('n', '<leader>gi', '<cmd>lua vim.lsp.buf.implementation()<cr>', opts)
        vim.keymap.set('n', '<leader>go', '<cmd>lua vim.lsp.buf.type_definition()<cr>', opts)
        vim.keymap.set('n', '<leader>gs', '<cmd>lua vim.lsp.buf.signature_help()<cr>', opts)
    end
})

