return {
    "catppuccin/nvim",

    config = function ()
        require("catppuccin").setup({
            flavour = "mocha",
            no_italic = true
        })
    end
}
