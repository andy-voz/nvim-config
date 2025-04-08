require("mason").setup()
require("nvim-tree").setup()
require("lspconfig").clangd.setup({
  cmd = { vim.fn.exepath("clangd") }
})
