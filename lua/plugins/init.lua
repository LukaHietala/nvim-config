-- using new neovim builtin package manager
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

require("plugins.lazydev")
require("plugins.mason")
require("plugins.gruvbox")
require("plugins.treesitter")
require("plugins.telescope")
