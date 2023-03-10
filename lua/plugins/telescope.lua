-- plugin: telescope
-- allows you to quickly find/preview files in directory, grep contents, etc.
local builtin = require("telescope.builtin")

vim.keymap.set("n", "ff", builtin.find_files, {})
vim.keymap.set("n", "fo", builtin.oldfiles, {})
vim.keymap.set("n", "fg", builtin.live_grep, {})
vim.keymap.set("n", "fh", builtin.help_tags, {})
