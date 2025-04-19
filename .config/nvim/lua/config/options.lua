local opt = vim.opt

opt.number = true
opt.relativenumber = true
opt.expandtab = true
opt.tabstop = 2
opt.softtabstop = 2
opt.shiftwidth = 2
opt.laststatus = 2
opt.statusline = "%f"
opt.termguicolors = true -- set t_Co=256 の代替
opt.hlsearch = true
opt.wildmenu = true
opt.backspace = { "indent", "eol", "start" }
opt.encoding = "utf-8"
opt.updatetime = 150
opt.backup = false
opt.writebackup = false
opt.signcolumn = "yes"
opt.cursorline = true
opt.foldenable = true
opt.foldmethod = "indent"
opt.foldlevelstart = 99
opt.clipboard:append("unnamed")
opt.incsearch = true
opt.errorbells = false
opt.guicursor = "n-v-c:block"

if vim.env.TERM_PROGRAM == "tmux" then
  opt.termguicolors = true
else
  opt.termguicolors = false
end
