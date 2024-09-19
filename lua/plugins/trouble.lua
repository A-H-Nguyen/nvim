return {
    "folke/trouble.nvim",
    dependencies = { "nvim-tree/nvim-web-devicons" },

    opts = {
        -- configuration goes here
        -- leave it empty to use the default settings
    },
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
