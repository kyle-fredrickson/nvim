-- plugin: barbar
-- allows you to open multiple buffers in tabs

require'bufferline'.setup {
  auto_hide = true,
  animation = false,
  icon_custom_colors = "solarized",
}

local opts = { noremap = true, silent = true }

-- move to previous/next
vim.keymap.set('n', '<Tab>', '<Cmd>BufferNext<CR>', opts)
vim.keymap.set('n', '<S-Tab>', '<Cmd>BufferPrevious<CR>', opts)

-- re-order to previous/next
vim.keymap.set('n', '<c-<>', '<Cmd>BufferMovePrevious<CR>', opts)
vim.keymap.set('n', '<c->>', '<Cmd>BufferMoveNext<CR>', opts)

-- close buffer
vim.keymap.set('n', '<c-c>', '<Cmd>BufferClose<CR>', opts)

-- these functions work with nvim-tree to offset where the tabs start
local nvim_tree_events = require('nvim-tree.events')
local bufferline_api = require('bufferline.api')

local function get_tree_size()
  return require'nvim-tree.view'.View.width
end

nvim_tree_events.subscribe('TreeOpen', function()
  bufferline_api.set_offset(get_tree_size())
end)

nvim_tree_events.subscribe('Resize', function()
  bufferline_api.set_offset(get_tree_size())
end)

nvim_tree_events.subscribe('TreeClose', function()
  bufferline_api.set_offset(0)
end)
