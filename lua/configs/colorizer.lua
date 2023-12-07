require("colorizer").setup({
    user_default_options = {
        RRGGBBAA = true,
        AARRGGBB = true,
        rgb_fn = true,
        hsl_fn = true,
        css = true,
        css_fn = true,
        mode = "virtualtext",
        virtualtext = "■",
    },
    filetypes = {
        "*",
        "!prompt",
        "!popup",
    },
})
