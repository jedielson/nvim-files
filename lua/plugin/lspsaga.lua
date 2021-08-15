local saga = require 'lspsaga'

saga.init_lsp_saga {
  error_sign = '',
  warn_sign = '',
  hint_sign = '',
  infor_sign = '',
  border_style = "round",
}

vim.api.nvim_set_keymap('n', '<C-j>', '<Cmd>Lspsaga diagnostic_jump_next<CR>', {noremap = true})
vim.api.nvim_set_keymap('n', 'lsh', '<Cmd>Lspsaga hover_doc<CR>', {noremap = true})
vim.api.nvim_set_keymap('i', 'lss', '<Cmd>Lspsaga signature_help<CR>', {noremap = true})
vim.api.nvim_set_keymap('n', 'lsf',  '<Cmd>Lspsaga lsp_finder<CR>', {noremap = true})
