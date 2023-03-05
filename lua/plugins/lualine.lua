-- plugin: lualine
-- gives you a nice powerline at the bottom of the buffer to tell you vim mode,
-- file name, file format, filetype, progress through the file, and line
-- number/column

require("lualine").setup {
  options = {
    icons_enabled = true,
    theme = "solarized",
  },
  sections = {
    lualine_x = {'encoding', 'filetype'},
  }
}
