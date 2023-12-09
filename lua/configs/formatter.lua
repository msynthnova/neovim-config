local null_ls = require("null-ls")

null_ls.setup({
    sources = {
        null_ls.builtins.formatting.stylua.with({ extra_args = { "--indent-width", 4, "--indent-type", "Spaces" } }),
        null_ls.builtins.formatting.prettier.with({ extra_args = { "--tab-width", 4 } }),
        null_ls.builtins.formatting.shfmt.with({ extra_args = { "-i", 4 } }),
        null_ls.builtins.formatting.clang_format.with({
            extra_args = { "-style", "file", "--fallback-style", "Microsoft" },
        }),
        null_ls.builtins.formatting.black,
        null_ls.builtins.formatting.rustfmt,
    },
})
