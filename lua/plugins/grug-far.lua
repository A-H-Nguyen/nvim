return {
    'MagicDuck/grug-far.nvim',
    -- Note (lazy loading): grug-far.lua defers all it's requires so it's lazy by default
    -- additional lazy config to defer loading is not really needed...
    config = function()
      -- optional setup call to override plugin options
      -- alternatively you can set options with vim.g.grug_far = { ... }
      require('grug-far').setup({})

      vim.keymap.set('n', '<leader>rr', function ()
        require('grug-far').open({ transient = true })
      end,  { desc = 'Open grug' });

      vim.keymap.set('n', '<leader>rc', function ()
        require('grug-far').get_instance(0):close()
      end,  { desc = 'close grug' })

      vim.keymap.set('n', '<leader>ra', function ()
        require('grug-far').get_instance(0):abort()
      end,  { desc = 'Abort current grug task' })
    end
}
