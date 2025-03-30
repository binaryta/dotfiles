return {
  "tomasiser/vim-code-dark",
  lazy = false,
  config = function()
    if vim.env.TERM_PROGRAM ~= "tmux" then
      vim.cmd("colorscheme codedark")
    end
  end,
}
