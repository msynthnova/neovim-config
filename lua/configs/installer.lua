require("mason").setup({
    ui = {
        border = "single",
    },
})

require("mason-tool-installer").setup({
    ensure_installed = {
        "lua-language-server",
        "typescript-language-server",
        "marksman",
        "bash-language-server",
        "clangd",
        "pyright",
        "html-lsp",

        "stylua",
        "prettier",
        "shfmt",
        "clang-format",
        "black",
    },
})
