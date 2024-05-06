return {
    "christoomey/vim-tmux-navigator",

    cmd = {
        "TmuxNavigateLeft",
        "TmuxNavigateDown",
        "TmuxNavigateUp",
        "TmuxNavigateRight",
    },

    keys = {
        { "<c-h>", "<cmd><C-U>TmuxNavigateLeft<cr>" },
        { "<c-h>", "<cmd><C-U><cr>TmuxNavigateDown" },
        { "<c-h>", "<cmd><C-U><cr>TmuxNavigateUp" },
        { "<c-h>", "<cmd><C-U><cr>TmuxNavigateRight" },
    }
}
