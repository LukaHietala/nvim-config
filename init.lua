-- opts and globals 
vim.g.mapleader = ' '
vim.g.maplocalleader = ' '
vim.o.number = true
vim.o.relativenumber = true
vim.o.shiftwidth=4
vim.opt.wrap = false
vim.opt.guicursor = ""
vim.opt.swapfile = false

vim.opt.scrolloff = 12 
vim.opt.signcolumn = "yes"

-- remaps
vim.keymap.set("n", "<leader>e", vim.cmd.Ex)

vim.pack.del({"instant.nvim"})
-- instant nvim
vim.g.instant_username = "lhietala"
