return {
  "romus204/tree-sitter-manager.nvim",
  lazy = false,
  config = function()
    require("tree-sitter-manager").setup({
      ensure_installed = {
        "lua",
        "vim",
        "vimdoc",
        "typescript",
        "javascript",
        "tsx",
        "json",
        "jsonc",
        "yaml",
        "html",
        "css",
        "ruby",
        "rust",
        "bash",
        "dockerfile",
        "terraform",
        "hcl",
        "prisma",
        "markdown",
        "markdown_inline",
      },
      highlight = true,
    })
  end,
}
