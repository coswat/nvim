return {
  {
    "stevearc/conform.nvim",
    event = "BufWritePre",
    opts = require "configs.conform",
  },

  {
    "neovim/nvim-lspconfig",
    config = function()
      require("configs.lspconfig").defaults()
    end,
  },

  {
    "nvim-treesitter/nvim-treesitter",
    opts = {
      ensure_installed = {
        "lua",
        "rust",
        "toml",
        "json",
        "python",
      },
    },
  },

  {
    import = "nvchad.blink.lazyspec",
  },
  -- Disable NvChad Plugins
  { "lukas-reineke/indent-blankline.nvim", enabled = false },
  { "nvim-tree/nvim-tree.lua", enabled = false },
  { "hrsh7th/nvim-cmp", enabled = false },
  { "saadparwaiz1/cmp_luasnip", enabled = false },
  { "hrsh7th/cmp-nvim-lua", enabled = false },
  { "hrsh7th/cmp-nvim-lsp", enabled = false },
  { "hrsh7th/cmp-buffer", enabled = false },
  { "https://codeberg.org/FelipeLema/cmp-async-path.git", enabled = false },
  { "mason-org/mason.nvim", enabled = false },
  { "nvzone/minty", enabled = false },
  { "nvzone/menu", enabled = false },
  { "nvzone/volt", enabled = false },
}
