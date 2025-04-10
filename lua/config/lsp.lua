require("lspconfig").clangd.setup({
  on_attach = function(_, bufnr)
    local bufopts = { noremap = true, silent = true, buffer = bufnr }

    map("n", "gd", vim.lsp.buf.definition, bufopts)
    map("n", "gr", vim.lsp.buf.references, bufopts)
    map("n", "K", vim.lsp.buf.hover, bufopts)
    map("n", "<leader>rn", vim.lsp.buf.rename, bufopts)
    map("n", "<leader>ca", vim.lsp.buf.code_action, bufopts)
    map("n", "]d", vim.diagnostic.goto_next, bufopts)
    map("n", "[d", vim.diagnostic.goto_prev, bufopts)
    map("n", "<leader>e", vim.diagnostic.open_float, bufopts)
    map("n", "<leader>sh", "<cmd>ClangdSwitchSourceHeader<CR>", bufopts)
  end,
})
