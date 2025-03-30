-- leader
vim.g.mapleader = " "
vim.g.maplocalleader = "\\"

-- buffer
vim.keymap.set("n", "bls", ":ls<CR>:buf ", { noremap = true })
vim.keymap.set("n", "bn", ":bnext<CR>", { noremap = true })
vim.keymap.set("n", "bp", ":bprev<CR>", { noremap = true })
vim.keymap.set("n", "fn", ":edit ", { noremap = true })

-- tab
vim.keymap.set("n", "tt", ":tabnew ", { noremap = true })
vim.keymap.set("n", "tls", ":tabs<CR>", { noremap = true })
vim.keymap.set("n", "tn", ":tabnext<CR>", { noremap = true })
vim.keymap.set("n", "tp", ":tabprevious<CR>", { noremap = true })

-- split, vsplit
vim.keymap.set("n", "<", "<C-w><", { noremap = true })
vim.keymap.set("n", ">", "<C-w>>", { noremap = true })
vim.keymap.set("n", "+", "<C-w>+", { noremap = true })
vim.keymap.set("n", "-", "<C-w>-", { noremap = true })
