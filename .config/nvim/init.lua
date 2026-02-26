-- Options
vim.g.mapleader = " "
vim.o.showmode = false
vim.o.swapfile = false
vim.o.wrap = true
vim.o.termguicolors = true
vim.o.clipboard = "unnamedplus"

-- Line numbers
vim.o.number = true
vim.o.relativenumber = true

-- Tabs
vim.o.tabstop = 4
vim.o.softtabstop = 4
vim.o.shiftwidth = 4
vim.o.expandtab = true
vim.o.smarttab = true

-- Keymaps
require("config.keymaps")

-- Plugins
require("config.lazy")
