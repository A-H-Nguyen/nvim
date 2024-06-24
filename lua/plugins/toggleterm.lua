-- TODO: Implement some custom terminals here
--       Ideally I'll have access to tmux and therefore won't need this plugin at all
--       But this is good for when I can't use tmux like inside a container
return {
    'akinsho/toggleterm.nvim',
    version = "*",
    config = function ()
        require('toggleterm').setup({
            -- might need to change this:
            shell = '/usr/bin/bash',
        })

        vim.keymap.set('n', '<leader>\\', function ()
            vim.cmd('ToggleTerm direction=float')
        end)
    end
}
