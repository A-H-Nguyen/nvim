return {
    "mason-org/mason-lspconfig.nvim",
    dependencies = {
        { "mason-org/mason.nvim", opts = {} },
        "neovim/nvim-lspconfig",
    },

    config = function ()
        require('mason').setup()
        require('mason-lspconfig').setup({
            ensure_installed = {
                "clangd",
                "pylsp",
                "lua_ls",
            },
        })

        -- handlers = {
        --     function(server) -- default setup
        --         require('lspconfig')[server].setup({
        --             capabilities = lsp_capabilities,
        --             settings = {
        --                 Lua = {
        --                     diagnostics = {
        --                         globals = { 'vim' }
        --                     }
        --                 }
        --             }
        --         })
        --     end,

        --     ["lua_ls"] = function()
        --         local lspconfig = require("lspconfig")
        --         lspconfig.lua_ls.setup {
        --             capabilities = lsp_capabilities,
        --             settings = {
        --                 Lua = {
        --                     diagnostics = {
        --                         globals = {"vim"},
        --                     }
        --                 }
        --             }
        --         }
        --     end,

        vim.lsp.config('pylsp', {
            settings = {
                ['pylsp'] = {
                    plugins = {
                        pycodestyle = {
                            enabled = false,
                        },
                    },
                },
            },
        })

        vim.diagnostic.config({
            virtual_text = false,
            update_in_insert = true,
        })
    end
}
