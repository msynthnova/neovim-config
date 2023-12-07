require("nvim-treesitter.configs").setup({
    ensure_installed = {
        "c",
        "cpp",
        "python",
        "bash",
        "markdown",
        "markdown_inline",
        "html",
        "css",
        "javascript",
        "typescript",
        "yaml",
        "json",
        "gitignore",
        "lua",
        "vim",
        "vimdoc",
        "query",
    },
    auto_install = true,
    highlight = {
        enable = true,
    },
    indent = {
        enable = true,
    },
})
