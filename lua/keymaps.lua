-- remaps
vim.keymap.set("n", "<leader>e", vim.cmd.Ex)
-- plugin spesific ones are in their confs 
vim.keymap.set("n", "sex", [[:%s/\<<C-r><C-w>\>/<C-r><C-w>/gI<Left><Left><Left>]]) 

-- to system clipboard
vim.keymap.set({ "n", "v" }, "<leader>y", '"+y')

-- move between windows easily
vim.keymap.set('n', '<C-h>', '<C-w><C-h>', { desc = 'left window' })
vim.keymap.set('n', '<C-l>', '<C-w><C-l>', { desc = 'right window' })
vim.keymap.set('n', '<C-j>', '<C-w><C-j>', { desc = 'lower window' })
vim.keymap.set('n', '<C-k>', '<C-w><C-k>', { desc = ' upper window' })
