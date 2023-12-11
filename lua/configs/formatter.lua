local null_ls = require("null-ls")

null_ls.setup({
  sources = {
    null_ls.builtins.formatting.stylua.with({ extra_args = { "--indent-width", 2, "--indent-type", "Spaces" } }),
    null_ls.builtins.formatting.prettier,
    null_ls.builtins.formatting.shfmt.with({ extra_args = { "-i", 2 } }),
    null_ls.builtins.formatting.clang_format.with({
      extra_args = { "-style", "file", "--fallback-style", "LLVM" },
    }),
    null_ls.builtins.formatting.black,
  },
})
