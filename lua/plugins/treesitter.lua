-- plugin: nvim-treesitter
-- syntax highlighting for various languages.

require("nvim-treesitter.configs").setup {
  ensure_installed = {
    "c",
    "rust",
    "lua",
    "haskell",
    "latex",
    "bash",
    "python",
    "markdown",
  },
  sync_install = false,
  auto_install = true,
  highlight = {
    enable = true,
  },
}
