return {
  "Mofiqul/vscode.nvim",
  lazy = false,
  config = function()
    require("vscode").setup()

    if vim.env.TERM_PROGRAM == "tmux" then
      vim.cmd("colorscheme vscode")
    end
  end,
}
