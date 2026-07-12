return {
  "mason-org/mason.nvim",
  dependencies = {
    "mason-org/mason-lspconfig.nvim",
    "WhoIsSethDaniel/mason-tool-installer.nvim",
  },
  config = function()
    require("mason").setup()

    require("mason-lspconfig").setup({
      ensure_installed = require("lsp.servers"),
      automatic_enable = false,
    })

    require("mason-tool-installer").setup({
      ensure_installed = {
        "prettierd",
        "stylua",
        "eslint_d",
        "rubocop",
      },
    })
  end,
}
