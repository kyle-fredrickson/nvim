-- plugins: mason, mason-lspconfig, lsp config
-- work together to get language specific features like code completion,
-- documentation, linting, etc.

require("mason").setup()
require("mason-lspconfig").setup({
  ensure_installed = {
    "clangd",
    "hls",
    "pylsp",
    "rust_analyzer",
    "texlab",
  }
})

local on_attach = function(_, _)
  vim.keymap.set("n", "<leader>rn", vim.lsp.buf.rename, {})
  vim.keymap.set("n", "<leader>co", vim.lsp.buf.code_action, {})

  vim.keymap.set("n", "gd", vim.lsp.buf.definition, {})
  vim.keymap.set("n", "gi", vim.lsp.buf.implementation, {})
  vim.keymap.set("n", "gr", require("telescope.builtin"), {})
  vim.keymap.set("n", "K", vim.lsp.buf.hover, {})
end

require("lspconfig").clangd.setup {
  on_attack = on_attach
}

require("lspconfig").hls.setup {
  on_attack = on_attach
}

require("lspconfig").jsonls.setup {
  on_attack = on_attach
}

require("lspconfig").pylsp.setup {
  on_attack = on_attach
}

require("lspconfig").rust_analyzer.setup {
  on_attack = on_attach
}

require("lspconfig").texlab.setup {
  on_attack = on_attach
}
