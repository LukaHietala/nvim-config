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