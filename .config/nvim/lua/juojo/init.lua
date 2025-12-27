vim.o.number = true
vim.o.relativenumber = true
vim.o.tabstop = 4

require(CONFIG_ACTIVA .. ".lazy")
require(CONFIG_ACTIVA .. ".remap")

--vim.pack.add{
--  { src = 'https://github.com/neovim/nvim-lspconfig' },
--}

local teclas_desabilitadas = {
  "<Up>",
  "<Down>",
  "<Left>",
  "<Right>",
  "<Home>",
  "<End>"
}

for _, key in ipairs(teclas_desabilitadas) do
  vim.keymap.set({ "n", "i", "v" }, key, "<Nop>")
end

vim.keymap.set("n", "<Space>", "<Nop>")

vim.cmd.colorscheme "default"
