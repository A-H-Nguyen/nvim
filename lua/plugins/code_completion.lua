return {
    "hrsh7th/nvim-cmp",
    event = "InsertEnter",

    dependencies = {
        "hrsh7th/cmp-nvim-lsp",
        "L3MON4D3/LuaSnip",
        "saadparwaiz1/cmp_luasnip",
    },

    config = function()
        local cmp = require("cmp")
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
    end
}
