return {
    "nvim-lualine/lualine.nvim",

    dependencies = {
        "nvim-tree/nvim-web-devicons"
    },

    config = function()
      require('lualine').setup({
        options = {
          icons_enabled = true,
          theme = 'base16',
        },
        --
        -- Defaults:
        --
        -- sections = {
        --   lualine_a = {'mode'},
        --   lualine_b = {'branch', 'diff', 'diagnostics'},
        --   lualine_c = {
        --     {'filename', path=1,}
        --   },
        --   lualine_x = {'encoding', 'fileformat', 'filetype'},
        --   lualine_y = {'progress'},
        --   lualine_z = {'location'}
        -- },
        sections = {
          lualine_b = {{'filename', path=1,}},
          lualine_y = {'location'},
        },
      })
    end
}
