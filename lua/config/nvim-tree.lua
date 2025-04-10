local map = vim.keymap.set
local opts = { noremap = true, silent = true }

require("nvim-tree").setup()
map("n", "<C-n>", ":NvimTreeToggle<CR>", opts)