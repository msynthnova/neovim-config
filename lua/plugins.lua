require("lazy").setup({
    { "nvim-lua/plenary.nvim", commit = "55d9fe89e33efd26f532ef20223e5f9430c8b0c0" },
    { "nvim-tree/nvim-web-devicons", commit = "5efb8bd06841f91f97c90e16de85e96d57e9c862" },
    { "windwp/nvim-autopairs", commit = "0f04d78619cce9a5af4f355968040f7d675854a1" },
    { "folke/tokyonight.nvim", commit = "f247ee700b569ed43f39320413a13ba9b0aef0db" },
    { "willothy/nvim-cokeline", commit = "2e71292a37535fdbcf0f9500aeb141021d90af8b" },
    { "folke/which-key.nvim", commit = "4433e5ec9a507e5097571ed55c02ea9658fb268a" },
    { "sindrets/diffview.nvim", commit = "3dc498c9777fe79156f3d32dddd483b8b3dbd95f" },
    {
        "nvim-telescope/telescope.nvim",
        commit = "6213322ab56eb27356fdc09a5078e41e3ea7f3bc",
        dependencies = { "debugloop/telescope-undo.nvim", commit = "d3afc1c105535a90caec092ce27a113f77ba7b84" },
    },
    { "nvimdev/lspsaga.nvim", commit = "68d42e24295b4254fdf82a8a686fcf951f8a8d9a" },
    { "nvim-treesitter/nvim-treesitter", commit = "c203884c80ef31b6a3993398734fbe008addcb27" },
    { "nvim-lualine/lualine.nvim", commit = "2248ef254d0a1488a72041cfb45ca9caada6d994" },
    {
        "catppuccin/nvim",
        name = "catppuccin",
        commit = "988c0b2dde4140572ed37c6b8b5d5deac0219f9f",
    },
    {
        "lukas-reineke/indent-blankline.nvim",
        main = "ibl",
        commit = "7206c77cb931f79885fc47f88ae18f99148392eb",
    },
    { "nvim-tree/nvim-tree.lua", commit = "7d1760f892951dd6a118dae1d7a1d8df5f029edf" },
    { "famiu/bufdelete.nvim", commit = "07d1f8ba79dec59d42b975a4df1c732b2e4e37b4" },
    { "numToStr/Comment.nvim", commit = "0236521ea582747b58869cb72f70ccfa967d2e89" },
    { "RaafatTurki/hex.nvim", commit = "dc51e5d67fc994380b7c7a518b6b625cde4b3062" },
    { "folke/zen-mode.nvim", commit = "50e2e2a36cc97847d9ab3b1a3555ba2ef6839b50" },
    { "folke/twilight.nvim", commit = "8b7b50c0cb2dc781b2f4262a5ddd57571556d1e4" },
    { "NvChad/nvim-colorizer.lua", commit = "dde3084106a70b9a79d48f426f6d6fec6fd203f7" },
    { "lewis6991/gitsigns.nvim", commit = "6ef8c54fb526bf3a0bc4efb0b2fe8e6d9a7daed2" },
    { "nacro90/numb.nvim", commit = "3f7d4a74bd456e747a1278ea1672b26116e0824d" },
    { "kylechui/nvim-surround", commit = "633a0ab03159569a66b65671b0ffb1a6aed6cf18" },
    { "folke/trouble.nvim", commit = "f1168feada93c0154ede4d1fe9183bf69bac54ea" },
    { "ellisonleao/glow.nvim", commit = "5b38fb7b6e806cac62707a4aba8c10c5f14d5bb5", config = true, cmd = "Glow" },

    { "williamboman/mason.nvim", commit = "41e75af1f578e55ba050c863587cffde3556ffa6" },
    { "WhoIsSethDaniel/mason-tool-installer.nvim", commit = "8b70e7f1e0a4119c1234c3bde4a01c241cabcc74" },
    { "neovim/nvim-lspconfig", commit = "6c797ff9324094e333e2ace9526ca4a62ad9d1ca" },
    { "nvimtools/none-ls.nvim", commit = "101848ce09fccc8cdc420a6d58dee57fb988329e" },

    { "hrsh7th/nvim-cmp", commit = "0b751f6beef40fd47375eaf53d3057e0bfa317e4" },
    { "hrsh7th/cmp-nvim-lsp", commit = "44b16d11215dce86f253ce0c30949813c0a90765" },
    { "hrsh7th/cmp-buffer", commit = "3022dbc9166796b644a841a02de8dd1cc1d311fa" },
    { "hrsh7th/cmp-path", commit = "91ff86cd9c29299a64f968ebb45846c485725f23" },
    { "hrsh7th/cmp-vsnip", commit = "989a8a73c44e926199bfd05fa7a516d51f2d2752" },
    { "hrsh7th/vim-vsnip", commit = "8eebdf6ab4a880d845893f210fd20516d2e2384f" },
}, {
    ui = {
        border = "single",
    },
    install = {
        colorscheme = { "tokyonight" },
    },
})
