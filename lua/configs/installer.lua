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
    "css-lsp",
    "json-lsp",
    "yaml-language-server",
    "emmet-ls",

    "stylua",
    "prettier",
    "shfmt",
    "clang-format",
    "black",
  },
})
