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
  f = { "<CMD>Telescope find_files<CR>", "find files" },
  l = { "<CMD>Telescope live_grep<CR>", "find texts" },
  u = { "<CMD>Telescope undo<CR>", "undo tree" },

  e = { "<CMD>NvimTreeToggle<CR>", "file explorer" },
  w = { "<CMD>Bdelete<CR>", "delete tab" },
  q = { "<CMD>qa<CR>", "quit" },
  x = { "<CMD>HexToggle<CR>", "hex" },
  z = { "<CMD>ZenMode<CR>", "zenmode" },
  o = { "<CMD>TroubleToggle<CR>", "nvim trouble" },
  h = { "<CMD>Glow<CR>", "preview markdown" },

  d = {
    name = "diffview",
    o = { "<CMD>DiffviewOpen<CR>", "open" },
    c = { "<CMD>DiffviewClose<CR>", "close" },
  },

  t = { "<CMD>Lspsaga term_toggle<CR>", "terminal" },
  r = { "<CMD>Lspsaga rename<CR>", "rename" },

  a = {
    name = "languages server",
    o = { "<CMD>Lspsaga outline<CR>", "outline" },
    d = { "<CMD>Lspsaga peek_definition<CR>", "definition" },
    k = { "<CMD>Lspsaga diagnostic_jump_prev<CR>", "previous" },
    j = { "<CMD>Lspsaga diagnostic_jump_next<CR>", "next" },
    p = { "<CMD>Lspsaga hover_doc<CR>", "doc" },
    c = { "<CMD>Lspsaga code_action<CR>", "code actions" },
    f = { "<CMD>Lspsaga finder<CR>", "finder" },
  },
}

wk.setup({
  window = {
    border = "single",
  },
})
wk.register(mappings, { prefix = "<leader>", nowait = true })
