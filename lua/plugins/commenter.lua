--[[ I am using Ctrl + m as the prefix for all the commenting stuff ]]

return {
    'numToStr/Comment.nvim',
    lazy = false,
    config = function ()
        require('Comment').setup({
            -- ignores empty lines
            ignore = '^$',
            ---LHS of toggle mappings in NORMAL mode
            toggler = {
                ---Line-comment toggle keymap
                line = '<C-m>m',
                ---Block-comment toggle keymap
                block = '<C-m>b',
            },
            ---LHS of operator-pending mappings in NORMAL and VISUAL mode
            opleader = {
                -- -Line-comment keymap
                line = '<C-m>m',
                ---Block-comment keymap
                block = '<C-m>b',
            },
            ---LHS of extra mappings
            extra = {
                ---Add comment on the line above
                above = '<C-m>O',
                ---Add comment on the line below
                below = '<C-m>o',
                ---Add comment at the end of line
                eol = '<C-m>A',
            },
            ---Enable keybindings
            ---NOTE: If given `false` then the plugin won't create any mappings
            mappings = {
                ---Operator-pending mapping; `gcc` `gbc` `gc[count]{motion}` `gb[count]{motion}`
                basic = true,
                ---Extra mapping; `gco`, `gcO`, `gcA`
                extra = true,
            }
        })
    end
}


