-- Options are automatically loaded before lazy.nvim startup
-- Default options that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/options.lua
-- Add any additional options here

local set = vim.opt
set.mouse = ""
set.path:append('**')
set.autowrite = true
set.cursorline = true
set.hlsearch = true
set.autoindent = true
set.ignorecase = true

local seto = vim.o
seto.noswapfile = true
seto.undofile = true
-- seto.listchars:append {eol = '¶', tab = '▸', trail ='▸'}

local set_global = vim.g
set_global.mapleader = ' '
set_global.maplocalleader = ' '
