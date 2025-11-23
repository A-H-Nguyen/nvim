return {
  "folke/todo-comments.nvim",
  dependencies = { "nvim-lua/plenary.nvim" },
  opts = {
    -- NOTE: The alts straight up don't work
    keywords = {
      FIX = {
        icon = " ", -- icon used for the sign, and in search results
        color = "error", -- can be a hex color, or a named color (see below)
        alt = { "BROKEN", "FIXME", "BUG", "FIXIT", "ISSUE" }, -- a set of other keywords that all map to this FIX keywords
        -- signs = false, -- configure signs for some keywords individually
      },
      TODO = { icon = " ", color = "info" },
      HACK = { icon = " ", color = "warning" },
      WARN = { icon = " ", color = "warning", alt = { "WARNING", "XXX" } },
      NOTE = { icon = " ", color = "hint", alt = { "Note", "note", "INFO" } },
    },
  },

  -- FIX: this plugin stops working when I was try to set keybinds
  -- config = function ()
  --   vim.keymap.set("n", "<leader>tn", function()
  --     require("todo-comments").jump_next()
  --   end, { desc = "Next todo comment" })
  --   vim.keymap.set("n", "<leader>tp", function()
  --     require("todo-comments").jump_prev()
  --   end, { desc = "Previous todo comment" })
  -- end
}
