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
                "lua_ls",
                "rust_analyzer",
            },
            handlers = {
                function(server) -- default setup
                    require('lspconfig')[server].setup({
                        capabilities = lsp_capabilities,
                    })
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

                -- Ctrl n/p for next/prev completion item
                ['<C-n>'] = cmp.mapping.select_next_item(cmp_select),
                ['<C-p>'] = cmp.mapping.select_prev_item(cmp_select),
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
