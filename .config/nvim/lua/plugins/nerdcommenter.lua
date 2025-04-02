return {
  "preservim/nerdcommenter",
  lazy = true,
  event = "VeryLazy",
  config = function()
    vim.g.NERDSpaceDelims = 1
    vim.g.NERDDefaultAlign = "left"
  end
}
