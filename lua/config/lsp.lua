local lspconfig = require("lspconfig")

lspconfig.clangd.setup({
  on_attach = function(_, bufnr)
    local bufmap = function(lhs, rhs)
      vim.api.nvim_buf_set_keymap(bufnr, "n", lhs, rhs, { noremap = true, silent = true })
    end

    bufmap("gd", "<cmd>lua vim.lsp.buf.definition()<CR>")
    bufmap("gr", "<cmd>lua vim.lsp.buf.references()<CR>")
    bufmap("K", "<cmd>lua vim.lsp.buf.hover()<CR>")
    bufmap("<leader>rn", "<cmd>lua vim.lsp.buf.rename()<CR>")
    bufmap("<leader>ca", "<cmd>lua vim.lsp.buf.code_action()<CR>")
    bufmap("[d", "<cmd>lua vim.diagnostic.goto_prev()<CR>")
    bufmap("]d", "<cmd>lua vim.diagnostic.goto_next()<CR>")
    bufmap("<leader>e", "<cmd>lua vim.diagnostic.open_float()<CR>")
    bufmap("<leader>q", "<cmd>lua vim.diagnostic.setloclist()<CR>")
    bufmap("<leader>sh", "<cmd>ClangdSwitchSourceHeader<CR>")
  end,
})