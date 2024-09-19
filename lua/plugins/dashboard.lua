return {
  'nvimdev/dashboard-nvim',
  event = 'VimEnter',
  config = function()
    require('dashboard').setup {
      theme = 'hyper',
-- disable_move    --  default is false disable move keymap for hyper
-- shortcut_type   --  shorcut type 'letter' or 'number'
-- shuffle_letter  --  default is true, shortcut 'letter' will be randomize, set to false to have ordered letter.
-- change_to_vcs_root -- default is false,for open file in hyper mru. it will change to the root of vcs
-- config = {},    --  config used for theme
-- hide = {
--   statusline    -- hide statusline default is true
--   tabline       -- hide the tabline
--   winbar        -- hide winbar
-- },
-- preview = {
--   command       -- preview command
--   file_path     -- preview file path
--   file_height   -- preview file height
--   file_width    -- preview file width
-- },
      -- theme = 'doom',
      -- config = {
      --   center = {{
      --     icon = '',
      --     icon_hl = 'group',
      --     desc = 'description',
      --     desc_hl = 'group',
      --     key = 'shortcut key in dashboard buffer not keymap !!',
      --     key_hl = 'group',
      --     key_format = ' [%s]', -- `%s` will be substituted with value of `key`
      --     action = '',
      --   },},
      --   footer = {},
      -- }
    }
  end,
  dependencies = { {'nvim-tree/nvim-web-devicons'}}
}
