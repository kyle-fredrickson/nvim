-- remove trailing whitespace
vim.api.nvim_create_autocmd({ "BufWritePre", "FileWritePre" }, {
  pattern = { "*" },
  command = [[%s/\s\+$//e]],
})

-- remove extra whitespace between words
vim.api.nvim_create_autocmd({ "BufWritePre", "FileWritePre" }, {
  pattern = { "*" },
  command = [[%s/\v(\S)\s{2,}\v(\S)/\1 \2/ge]],
})

-- remove extra lines
vim.api.nvim_create_autocmd({ "BufWritePre", "FileWritePre" }, {
  pattern = { "*" },
  command = [[%s/\n\{3,}/\r\r/ge]],
})

