local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
  vim.fn.system({
    "git",
    "clone",
    "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git",
    "--branch=stable", -- latest stable release
    lazypath,
  })
end
vim.opt.rtp:prepend(lazypath)

local plugins = {
    -- Themes
    'marko-cerovac/material.nvim',

    -- Status line
    'nvim-lualine/lualine.nvim',

    -- File Tree
    'nvim-tree/nvim-tree.lua',

    -- Icons
    'nvim-tree/nvim-web-devicons',

    -- Terminal
    {
        'akinsho/toggleterm.nvim',
        version = "*",
        config = true
    },

    -- Project
    'ahmedkhalf/project.nvim',

    -- Telescope
    {
        'nvim-telescope/telescope.nvim',
        tag = '0.1.4',
        dependencies = {
            'nvim-lua/plenary.nvim'
        }
    },
    'nvim-telescope/telescope-media-files.nvim',

    -- Scrollbar
    'petertriho/nvim-scrollbar',

    -- Tabs
    'nanozuki/tabby.nvim',

    -- Dashboard
    {
        'nvimdev/dashboard-nvim',
        event = 'VimEnter',
        config = function()
            require('dashboard').setup {
                -- config
            }
        end,
        dependencies = { { 'nvim-tree/nvim-web-devicons' } }
    },

    -- LSP
    'williamboman/mason.nvim',
    "williamboman/mason-lspconfig.nvim",
    'neovim/nvim-lspconfig',

    -- Flutter dev
    {
        'akinsho/flutter-tools.nvim',
        lazy = false,
        dependencies = {
            'nvim-lua/plenary.nvim',
            'stevearc/dressing.nvim', -- optional for vim.ui.select
        },
        config = true,
    },

    -- CMP
    'hrsh7th/cmp-nvim-lsp',
    'hrsh7th/cmp-buffer',
    'hrsh7th/cmp-path',
    'hrsh7th/cmp-cmdline',
    'hrsh7th/nvim-cmp',

    -- Snippets plugin...without it nvim-cmp won't work correctly.
    'dcampos/nvim-snippy',
    'dcampos/cmp-snippy',

    -- Actualual snippets
    'honza/vim-snippets',

    -- Treesitter
    'nvim-treesitter/nvim-treesitter',

    -- Autopairs
    'windwp/nvim-autopairs',

    -- git
    'lewis6991/gitsigns.nvim',

    -- which key
    "folke/which-key.nvim",
    event = "VeryLazy",
    init = function()
        vim.o.timeout = true
        vim.o.timeoutlen = 300
    end,
    opts = {
        -- your configuration comes here
        -- or leave it empty to use the default settings
        -- refer to the configuration section below
    }
}

require("lazy").setup(plugins)
