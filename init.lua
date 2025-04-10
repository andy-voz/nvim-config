-- Set leader key to Space
vim.g.mapleader = " "

-- Enable line numbers
vim.opt.number = true
vim.opt.relativenumber = false

-- Enable syntax highlighting
vim.cmd("syntax enable")

-- Set tab width to 4 spaces
vim.opt.tabstop = 4
vim.opt.shiftwidth = 4
vim.opt.expandtab = true

-- Enable mouse support
vim.opt.mouse = "a"

-- Detect the platform and set the appropriate path
local config_path = vim.fn.stdpath("config") .. "/init.lua"
-- Reload config
vim.keymap.set("n", "<leader>r", ":luafile " .. config_path .. "<CR>", { silent = true })

-- Lazy plugins manager setup
require('config.lazy')

vim.cmd("colorscheme kanagawa")

require('config.setup')
require('config.telescope')
require('config.lsp')
require ('config.nvim-tree')
require('which-key')
