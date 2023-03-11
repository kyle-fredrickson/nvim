-- plugins: mason, mason-lspconfig, lsp config
-- work together to get language specific features like code completion,
-- documentation, linting, etc.

require("mason").setup()
require("mason-lspconfig").setup({
  ensure_installed = {
    "lua_ls",
    "clangd",
    "hls",
    "pyright",
    "rust_analyzer",
    "texlab",
  }
})

local on_attach = function(_, _)
  vim.keymap.set("n", "<leader>rn", vim.lsp.buf.rename, {})
  vim.keymap.set("n", "<leader>co", vim.lsp.buf.code_action, {})

  vim.keymap.set("n", "gd", vim.lsp.buf.definition, {})
  vim.keymap.set("n", "gi", vim.lsp.buf.implementation, {})
  vim.keymap.set("n", "gr", require("telescope.builtin").lsp_references, {})
  vim.keymap.set("n", "K", vim.lsp.buf.hover, {})
end

require("lspconfig").lua_ls.setup {
  on_attach = on_attach
}

require("lspconfig").clangd.setup {
  on_attach = on_attach
}

require("lspconfig").pyright.setup {
  on_attach = on_attach
}

require("lspconfig").hls.setup {
  on_attach = on_attach
}

require("lspconfig").rust_analyzer.setup {
  on_attach = on_attach
}

require("lspconfig").texlab.setup {
  on_attach = on_attach
}
