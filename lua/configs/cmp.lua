local cmp = require("cmp")

cmp.setup({
    snippet = {
        expand = function(args)
            vim.fn["vsnip#anonymous"](args.body)
        end,
    },
    mapping = {
        ["<S-Tab>"] = function(fallback)
            if not cmp.select_next_item() then
                fallback()
            end
        end,
        ["<CR>"] = cmp.mapping.confirm({ select = false }),
    },
    experimental = {
        ghost_text = true,
    },
    sources = cmp.config.sources({
        { name = "nvim_lsp" },
        { name = "vsnip" },
        { name = "buffer" },
        { name = "path" },
    }),
})
