vim.g.mapleader = " "
vim.keymap.set('n', '<leader>so', ':update<CR>:so<CR>')
vim.keymap.set('n', '<leader>w', ':write<CR>')
vim.keymap.set("n", "<leader>pv", vim.cmd.Ex)
 
vim.api.nvim_set_keymap("i", "jk", "<Esc>", { noremap = false })

-- Plugin keymaps
local builtin = require('telescope.builtin')
vim.keymap.set('n', '<leader>pf', builtin.find_files, { desc = 'Telescope find files' }) -- pf: project file
