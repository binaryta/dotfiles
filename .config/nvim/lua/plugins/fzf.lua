return {
  "junegunn/fzf",
  dir = "/opt/homebrew/opt/fzf",
  build = "./install --all",
  dependencies = {
    { "junegunn/fzf.vim" },
  },
  keys = {
    { "<space>f", ":Files<CR>", mode = "n", silent = true },
    { "<space>gg", ":RG<CR>", mode = "n", silent = true },
    { "<space>gs", ":GFiles?<CR>", mode = "n", silent = true },
    { "<space>b", ":Buffers<CR>", mode = "n", silent = true },
    { "<space>h", ":History<CR>", mode = "n", silent = true },
  },
}
