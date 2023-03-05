-- general key mappings
vim.g.mapleader = " "
vim.g.maplocalleader = " "
vim.keymap.set({"i", "v"}, "fd", "<esc>")

-- general
vim.opt.secure = true
vim.opt.encoding = "utf-8"

-- appearance
vim.opt.number = true -- turns on absolute line numbers
vim.opt.cursorline = true -- highlights line curson is on
vim.opt.list = true -- line for indent
vim.opt.listchars:append("trail:·") -- trailing spaces are marked with a dot

-- text wrapping
vim.opt.wrap = true -- wraps text if window is too narrow
vim.opt.textwidth = 80 -- textwidth, obviously

-- scrolling behavior
vim.opt.scrolloff = 8 -- cursor is always 8 lines from the bottom or top
vim.opt.sidescroll = 0 -- no side scrolling

-- indentation
vim.opt.expandtab = true -- use spaces for tabs
vim.opt.tabstop = 4 -- default tab length
vim.opt.softtabstop = 0 -- emulates tabstop
vim.opt.shiftwidth = 0 -- emulates tabstop
vim.opt.smartindent = true -- indents (smartly)
