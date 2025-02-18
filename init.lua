require("set")
require("remap")
require("lazy_init")

vim.api.nvim_set_option("clipboard", "unnamedplus")

vim.o.termguicolors = true
vim.cmd.colorscheme "catppuccin"

vim.api.nvim_set_hl(0, "Normal",      { bg = "none" })
vim.api.nvim_set_hl(0, "NormalNC",    { bg = "none" })
vim.api.nvim_set_hl(0, "NormalSB",    { bg = "none" })
vim.api.nvim_set_hl(0, "NormalFloat", { bg = "none" })

-- vim.g.clipboard = {
--         name = 'myClipboard',
--         copy = {
--            ['+'] = 'xfce4-clipman',
--            ['*'] = 'xfce4-clipman',
--          },
--         paste = {
--            ['+'] = 'xfce4-clipman',
--            ['*'] = 'xfce4-clipman',
--         },
--         cache_enabled = 1,
--       }
