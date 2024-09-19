return {
    "catppuccin/nvim",

    config = function ()
        require("catppuccin").setup({
            flavour = "mocha",
            transparent_background = false, -- disables setting the background color.
            dim_inactive = {
                enabled = true, -- dims the background color of inactive window
                shade = "dark",
                percentage = 0.9, -- percentage of the shade apllied to inactive window
            },
            no_italic = true
        })
    end
}
