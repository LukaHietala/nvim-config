-- remaps
vim.keymap.set("n", "<leader>e", vim.cmd.Ex)
-- plugin spesific ones are in their confs 
vim.keymap.set("n", "sex", [[:%s/\<<C-r><C-w>\>/<C-r><C-w>/gI<Left><Left><Left>]]) 
