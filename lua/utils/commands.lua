function Format()
    vim.lsp.buf.format({ async = false })
end

vim.cmd("command! Format lua Format()")
