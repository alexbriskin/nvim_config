-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here
map = vim.keymap
map.set('n', '<Leader>l', ':set list!<CR>')
map.set('n', '<Leader>nt', ':set number! | set relativenumber! <CR>')
map.set('v', '//', 'y/<C-R>"<CR>')
map.set('n', '<Leader>m', ':Man <C-R><C-W><CR>')
map.set('n', 'n', 'nzz')
map.set('n', 'N', 'Nzz')
map.set('n', 'p', 'pzz')
map.set('n', 'P', 'Pzz')
map.set('n', '*', '*zz')
map.set('n', '#', '#zz')
