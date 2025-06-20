return {
    "neovim/nvim-lspconfig",

    dependencies = {
        "williamboman/mason.nvim",
        "williamboman/mason-lspconfig.nvim",
        "hrsh7th/nvim-cmp",
        "hrsh7th/cmp-nvim-lsp",
        "L3MON4D3/LuaSnip",
        "saadparwaiz1/cmp_luasnip"
    },

    config = function ()
        local cmp = require('cmp')
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
                                    flake8 = {
                                        enabled = false,
                                    },
                                    pycodestyle = {
                                        enabled = false,
                                    },
                                    -- pyflakes = {enabled = false},
                                },
                            },
                        },
                    }
                end,
          },
        })

        local cmp_select = { behavior = cmp.SelectBehavior.Select }

        cmp.setup({
            sources = {
                {name = 'nvim_lsp'},
                {name = 'luasnip'},
            },
            mapping = cmp.mapping.preset.insert({
                -- Ctrl + space triggers completion menu
                ['<C-Space>'] = cmp.mapping.complete(),

                -- Enter key confirms completion item
                ['<CR>'] = cmp.mapping.confirm({select = false}),

                -- By default, Ctrl n/p are bound to next/prev completion item
                -- But I like j/k because it mimics text navigation, and using my pinky too much hurts :(
                ['<C-j>'] = cmp.mapping.select_next_item(cmp_select),
                ['<C-k>'] = cmp.mapping.select_prev_item(cmp_select),
            }),
            snippet = {
                expand = function(args)
                    require('luasnip').lsp_expand(args.body)
                end,
            },
        })

        vim.diagnostic.config({
            virtual_text = false,
            update_in_insert = true,
        })
    end
}
