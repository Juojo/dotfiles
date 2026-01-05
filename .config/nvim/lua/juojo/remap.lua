vim.g.mapleader = " "
vim.keymap.set('n', '<leader>so', ':update<CR>:so<CR>')
vim.keymap.set("n", "<leader>pv", vim.cmd.Ex)
vim.keymap.set('n', '<leader>lf', vim.lsp.buf.format)
 
vim.api.nvim_set_keymap("i", "jk", "<Esc>", { noremap = false })

-- Plugin keymaps
local builtin = require('telescope.builtin')
vim.keymap.set('n', '<leader>pf', builtin.find_files, { desc = 'Telescope find files' }) -- pf: project file
vim.keymap.set('n', '<C-p>', builtin.git_files, {})
vim.keymap.set('n', '<leader>ps', function()
		builtin.grep_string({ search = vim.fn.input("Grep > "), search_dirs = { vim.fn.expand("%:p") }, sorting_strategy = "ascending" });
end)

local harpoon = require("harpoon")

-- REQUIRED
harpoon:setup()
-- REQUIRED

vim.keymap.set("n", "<leader>m", function() 
	harpoon:list():add()
	print("Harpoon: File marked")	
end)
vim.keymap.set("n", "<C-e>", function() harpoon.ui:toggle_quick_menu(harpoon:list()) end)

vim.keymap.set("n", "<C-j>", function() harpoon:list():select(1) end)
vim.keymap.set("n", "<C-k>", function() harpoon:list():select(2) end)
vim.keymap.set("n", "<C-l>", function() harpoon:list():select(3) end)
vim.keymap.set("n", "<C-;>", function() harpoon:list():select(4) end)

vim.keymap.set('n', '<leader>u', require('undotree').toggle, { noremap = true, silent = true })
