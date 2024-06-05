return {
    "folke/trouble.nvim",
    dependencies = { "nvim-tree/nvim-web-devicons" },

    opts = {
        -- configuration goes here
        -- leave it empty to use the default settings
    },

    -- config = function ()
    --     local trouble = require('trouble')

    --     trouble.setup({})

    --     vim.keymap.set("n", "<leader>da", function() trouble.toggle() end)
    --     vim.keymap.set("n", "<leader>dw", function() trouble.toggle("workspace_diagnostics") end)
    --     vim.keymap.set("n", "<leader>dd", function() trouble.toggle("document_diagnostics") end)
    --     vim.keymap.set("n", "<leader>dq", function() trouble.toggle("quickfix") end)
    --     vim.keymap.set("n", "<leader>dl", function() trouble.toggle("loclist") end)
    --     vim.keymap.set("n", "<leader>gr", function() trouble.toggle("lsp_references") end)
    -- end
    cmd = "Trouble",
    keys = {
        {
            "<leader>dw",
            "<cmd>Trouble diagnostics toggle focus=true win.position=bottom<cr>",
            desc = "Diagnostics (Trouble)",
        },
        {
            "<leader>dd",
            "<cmd>Trouble diagnostics toggle focus=true win.position=bottom filter.buf=0<cr>",
            desc = "Buffer Diagnostics (Trouble)",
        },
        {
            "<leader>ds",
            "<cmd>Trouble symbols toggle focus=true win.position=bottom<cr>",
            desc = "Symbols (Trouble)",
        },
        {
            "<leader>dl",
            "<cmd>Trouble lsp toggle focus=true win.position=bottom<cr>",
            desc = "LSP Definitions / references / ... (Trouble)",
        },
        {
            "<leader>dL",
            "<cmd>Trouble loclist toggle focus=true win.position=bottom<cr>",
            desc = "Location List (Trouble)",
        },
        {
            "<leader>dQ",
            "<cmd>Trouble qflist toggle focus=true win.position=bottom<cr>",
            desc = "Quickfix List (Trouble)",
        },
    },
}
