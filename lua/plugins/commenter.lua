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
                line = 'gcc',
                ---Block-comment toggle keymap
                block = 'gcb',
            },
            ---LHS of operator-pending mappings in NORMAL and VISUAL mode
            opleader = {
                -- -Line-comment keymap
                line = 'gcc',
                ---Block-comment keymap
                block = 'gcb',
            },
            ---LHS of extra mappings
            extra = {
                ---Add comment on the line above
                above = 'gcO',
                ---Add comment on the line below
                below = 'gco',
                ---Add comment at the end of line
                eol = 'gcA',
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


