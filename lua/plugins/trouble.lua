return {
    "folke/trouble.nvim",
    dependencies = { "nvim-tree/nvim-web-devicons" },

    opts = {
        -- configuration goes here
        -- leave it empty to use the default settings
    },

    config = function ()
        local trouble = require('trouble')

        trouble.setup({})

        vim.keymap.set("n", "<leader>da", function() trouble.toggle() end)
        vim.keymap.set("n", "<leader>dw", function() trouble.toggle("workspace_diagnostics") end)
        vim.keymap.set("n", "<leader>dd", function() trouble.toggle("document_diagnostics") end)
        vim.keymap.set("n", "<leader>dq", function() trouble.toggle("quickfix") end)
        vim.keymap.set("n", "<leader>dl", function() trouble.toggle("loclist") end)
        vim.keymap.set("n", "gR",         function() trouble.toggle("lsp_references") end)
    end
}
