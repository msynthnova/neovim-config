function Format()
    vim.lsp.buf.format()
end

vim.cmd("command! Format lua Format()")
