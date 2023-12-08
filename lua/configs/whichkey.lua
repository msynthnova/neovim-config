local wk = require("which-key")

local opts = {
    silent = true,
    noremap = true,
    nowait = true,
}

local keymap = vim.keymap.set
keymap("", "<Space>", "<Nop>", opts)

keymap("n", "<C-h>", "<C-w>h", opts)
keymap("n", "<C-j>", "<C-w>j", opts)
keymap("n", "<C-k>", "<C-w>k", opts)
keymap("n", "<C-l>", "<C-w>l", opts)

keymap("n", "<S-l>", "<CMD>bnext<CR>", opts)
keymap("n", "<S-h>", "<CMD>bprevious<CR>", opts)

local mappings = {
    f = {
        name = "file",
        f = { "<CMD>Telescope find_files<CR>", "find file" },
        d = { "<CMD>Telescope live_grep<CR>", "find text" },
    },
    e = { "<CMD>NvimTreeToggle<CR>", "file explorer" },
    w = { "<CMD>Bdelete<CR>", "delete tab" },
    q = { "<CMD>qa<CR>", "quit" },
    x = { "<CMD>HexToggle<CR>", "hex" },
    z = { "<CMD>ZenMode<CR>", "zenmode" },
    a = {
        name = "languages server",
        o = { "<CMD>Lspsaga outline<CR>", "outline" },
        r = { "<CMD>Lspsaga rename<CR>", "rename" },
        d = { "<CMD>Lspsaga peek_definition<CR>", "definition" },
        k = { "<CMD>Lspsaga diagnostic_jump_prev<CR>", "previous" },
        j = { "<CMD>Lspsaga diagnostic_jump_next<CR>", "next" },
        p = { "<CMD>Lspsaga hover_doc<CR>", "doc" },
    },
}

wk.setup({
    window = {
        border = "single",
    },
})
wk.register(mappings, { prefix = "<leader>", nowait = true })
