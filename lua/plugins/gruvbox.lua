-- gruvbox
vim.o.background = "dark"

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

vim.cmd([[colorscheme gruvbox]])