local null_ls = require("null-ls")

null_ls.setup({
    sources = {
        null_ls.builtins.formatting.stylua.with({
            extra_args = { "--indent-width", "4" },
        }),
        null_ls.builtins.formatting.prettierd,
        null_ls.builtins.formatting.shfmt,
        null_ls.builtins.formatting.clang_format.with({
            extra_args = { "--style", "Microsoft" },
        }),
        null_ls.builtins.formatting.black.with({ extra_args = { "--fast" } }),
    },
})
