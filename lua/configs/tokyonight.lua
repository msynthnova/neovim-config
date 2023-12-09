require("tokyonight").setup({
    style = "moon",
    transparent = true,
    styles = {
        comments = { italic = true },
        keywords = { italic = true },
        functions = {},
        variables = {},
    },
})

vim.cmd([[colorscheme tokyonight]])
