-- plugin: nnvim-tree
-- gives you a directory tree where you can open files

vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1

require("nvim-tree").setup()

vim.keymap.set("n", "<c-n>", ":NvimTreeFindFileToggle<CR>")

