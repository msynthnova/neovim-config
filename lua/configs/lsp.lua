local lspconfig = require("lspconfig")

local capabilities = require("cmp_nvim_lsp").default_capabilities()
local clang_cap = capabilities
local css_cap = capabilities
local json_cap = capabilities

clang_cap.offsetEncoding = { "utf-16" }
css_cap.textDocument.completion.completionItem.snippetSupport = true
json_cap.textDocument.completion.completionItem.snippetSupport = true

vim.diagnostic.config({
    virtual_text = true,
    signs = true,
    underline = false,
    update_in_insert = false,
    severity_sort = true,
})

local signs = { Error = "󰅚 ", Warn = "󰀪 ", Hint = "󰌶 ", Info = " " }
for type, icon in pairs(signs) do
    local hl = "DiagnosticSign" .. type
    vim.fn.sign_define(hl, { text = icon, texthl = hl, numhl = hl })
end

local augroup = vim.api.nvim_create_augroup("LspFormatting", {})
local lsp_formatting = function(buffer)
    vim.lsp.buf.format({
        filter = function(client)
            return client.name == "null-ls"
        end,
        bufnr = buffer,
    })
end

local on_attach = function(client, buffer)
    if not buffer then
        return
    end

    client.name = client.name
    vim.api.nvim_clear_autocmds({ group = augroup, buffer = buffer })
    vim.api.nvim_create_autocmd("BufWritePre", {
        group = augroup,
        buffer = buffer,
        callback = function()
            lsp_formatting(buffer)
        end,
    })
end

lspconfig.lua_ls.setup({
    on_attach = on_attach,
    capabilities = capabilities,
    settings = {
        Lua = {
            runtime = {
                version = "LuaJIT",
            },
            diagnostics = {
                globals = { "vim" },
            },
            workspace = {
                checkThirdParty = false,
            },
            telemetry = {
                enable = false,
            },
        },
    },
})

lspconfig.tsserver.setup({
    on_attach = on_attach,
    capabilities = capabilities,
})

lspconfig.marksman.setup({
    on_attach = on_attach,
    capabilities = capabilities,
})

lspconfig.bashls.setup({
    on_attach = on_attach,
    capabilities = capabilities,
})

lspconfig.clangd.setup({
    on_attach = on_attach,
    capabilities = clang_cap,
})

lspconfig.pyright.setup({
    on_attach = on_attach,
    capabilities = capabilities,
})

lspconfig.html.setup({
    on_attach = on_attach,
    capabilities = capabilities,
})

lspconfig.cssls.setup({
    on_attach = on_attach,
    capabilities = css_cap,
})

lspconfig.jsonls.setup({
    on_attach = on_attach,
    capabilities = json_cap,
})

lspconfig.rust_analyzer.setup({
    on_attach = on_attach,
    capabilities = capabilities,
    settings = {
        ["rust-analyzer"] = {
            diagnostics = {
                enable = false,
            },
        },
    },
})

lspconfig.yamlls.setup({
    on_attach = on_attach,
    capabilities = capabilities,
    settings = {},
})

lspconfig.emmet_ls.setup({
    on_attach = on_attach,
    capabilities = capabilities,
})
