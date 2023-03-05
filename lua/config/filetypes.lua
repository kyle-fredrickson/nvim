-- autocommands for language specific settings.
-- note: default tabbing behavior is already defined

-- lua, html
vim.api.nvim_create_autocmd("FileType", {
  pattern = {"lua", "html"},
  callback = function ()
    vim.opt.tabstop = 2
  end,
})
