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

vim.pack.add({
    { src = "https://github.com/ellisonleao/gruvbox.nvim" }
})

-- gruvbox
vim.o.background = "dark"
vim.cmd([[colorscheme gruvbox]])

require("gruvbox").setup({
  bold = false,
  italic = {
    strings = false,
    emphasis = false,
    comments = false,
    operators = false,
    folds = false,
  },
  contrast = "hard",
})
