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
    { src = "https://github.com/ellisonleao/gruvbox.nvim" },
    { src = "https://github.com/nvim-lua/plenary.nvim" },
    { src = "https://github.com/nvim-telescope/telescope.nvim",
	version = "v0.1.9",
    },
    { src = "https://github.com/nvim-treesitter/nvim-treesitter"},
    { src = "https://github.com/neovim/nvim-lspconfig" },
    { src = "https://github.com/mason-org/mason.nvim" },
    { src = "https://github.com/folke/lazydev.nvim",
}
})

require("lazydev").setup({
  library = {
    { path = "${3rd}/luv/library", words = { "vim%.uv" } },
  },
})

require("mason").setup()

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


-- tree-sitter
require'nvim-treesitter.configs'.setup {
  ensure_installed = { "c", "python", "go", "lua", "cpp" },
  auto_install = true,
  highlight = {
    enable = true,
    disable = function(lang, buf)
        local max_filesize = 100 * 1024 -- 100 KB
        local ok, stats = pcall(vim.loop.fs_stat, vim.api.nvim_buf_get_name(buf))
        if ok and stats and stats.size > max_filesize then
            return true
        end
    end,
    additional_vim_regex_highlighting = false,
  },
}


-- telescope
require('telescope').setup{
    pickers = {
	find_files = {
	    theme = "ivy"
	}
    }
}

local builtin = require('telescope.builtin')
vim.keymap.set('n', '<leader>ff', builtin.find_files, { desc = 'find files' })
vim.keymap.set('n', '<leader>fg', builtin.live_grep, { desc = 'live grep' })
vim.keymap.set('n', '<leader>fr', builtin.lsp_references, { desc = 'lsp refs' })

vim.cmd([[colorscheme gruvbox]])

-- lsp

vim.lsp.enable('pyright')
vim.lsp.enable('lua_ls')
