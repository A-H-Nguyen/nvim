return {
    "neovim/nvim-lspconfig",

    dependencies = {
        "williamboman/mason.nvim",
        "williamboman/mason-lspconfig.nvim",
    },

    config = function ()
        local lsp_capabilities = require('cmp_nvim_lsp').default_capabilities()

        require('mason').setup()
        require('mason-lspconfig').setup({
            ensure_installed = {
                "clangd",
                "pylsp",
                "lua_ls",
            },
            handlers = {
                function(server) -- default setup
                    require('lspconfig')[server].setup({
                        capabilities = lsp_capabilities,
                        settings = {
                            Lua = {
                                diagnostics = {
                                    globals = { 'vim' }
                                }
                            }
                        }
                    })
                end,

                ["lua_ls"] = function()
                    local lspconfig = require("lspconfig")
                    lspconfig.lua_ls.setup {
                        capabilities = lsp_capabilities,
                        settings = {
                            Lua = {
                                diagnostics = {
                                    globals = {"vim"},
                                }
                            }
                        }
                    }
                end,

                ["pylsp"] = function()
                    local lspconfig = require("lspconfig")
                    lspconfig.pylsp.setup {
                        capabilities = lsp_capabilities,
                        settings = {
                            pylsp = {
                                plugins = {
                                    pycodestyle = {
                                        enabled = false,
                                    },
                                },
                            },
                        },
                    }
                end,
            },
        })

        vim.diagnostic.config({
            virtual_text = false,
            update_in_insert = true,
        })
    end
}
