return {
  "neovim/nvim-lspconfig",
  dependencies = {
    "saghen/blink.cmp", -- capabilities を先に用意するため依存させる
    "mason-org/mason.nvim",
    "mason-org/mason-lspconfig.nvim",
  },
  event = { "BufReadPre", "BufNewFile" },
  config = function()
    require("lsp")
  end,
}
