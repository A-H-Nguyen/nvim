require("set")
require("remap")
require("lazy_init")

vim.api.nvim_set_option("clipboard", "unnamedplus")

vim.o.termguicolors = true

local function source_matugen()
  -- dofile doesn't expand $HOME or ~
  local matugen_path = os.getenv("HOME") .. "/.config/nvim/lua/plugins/colors.lua"

  local file, err = io.open(matugen_path, "r")
  -- If the matugen file does not exist (yet or at all), 
  -- we must initialize a color scheme ourselves
  if err ~= nil then
    -- Some placeholder theme, this will be overwritten once matugen kicks in
    vim.cmd('colorscheme \"catppuccin\"')

    -- Optionally print something to the user vim.print("Matugen style file was not found, using default colorscheme")
  else
    dofile(matugen_path)
    io.close(file)
  end
end

-- vim.cmd.colorscheme "catppuccin"
source_matugen()

-- TODO: Make this autohook work
-- local function auxiliary_function()
--   -- Load the matugen style file to get all the new colors
--   source_matugen()
--
--   -- Because reloading base16 overwrites lualine configuration, 
--   -- source lualine here
--   dofile(os.getenv("HOME") .. "/.config/nvim/lua/plugins/lualine.lua")
-- end
--
-- -- Register an autocmd to listen for matugen updates
-- vim.api.nvim_create_autocmd("Signal", {
--   pattern = "SIGUSR1",
--   callback = auxiliary_function,
-- })

-- vim.g.clipboard = {
--         name = 'myClipboard',
--         copy = {
--            ['+'] = 'waycopy',
--            ['*'] = 'waycopy',
--         },
--         paste = {
--            ['+'] = 'waycopy',
--            ['*'] = 'waycopy',
--         },
--         cache_enabled = 1,
--       }

-- For if I have stuff in a .vimrc such as code coloring for MLIR
vim.cmd([[
set runtimepath^=~/.vim runtimepath+=~/.vim/after
let &packpath = &runtimepath
]])

