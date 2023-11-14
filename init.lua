-- disable netrw at the very start of your init.lua
vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1

-- set termguicolors to enable highlight groups
vim.opt.termguicolors = true

require('options')
require('plugins')

vim.g.material_style = "darker"
vim.cmd 'colorscheme material'

-- BEGIN: Plugins setup
require('lualine').setup()

require('dashboard').setup()

require('auto-save').setup()

require('scrollbar').setup()
require("scrollbar.handlers.gitsigns").setup()
require("scrollbar.handlers.diagnostic").setup()

require('nvim-tree').setup {
    git = {
        ignore = false,
    }
}

require('project_nvim').setup()

local telescope = require('telescope')
require('telescope').load_extension('media_files')
require('telescope').load_extension('projects')
telescope.setup()

require('mason').setup()
require('mason-lspconfig').setup()

require('nvim-autopairs').setup()

require('gitsigns').setup()

require('cheatsheet').setup()

-- Configs in separate files:
require('cmp_setup')
require('lsp_setup')
require('ts_setup')

local wk = require("which-key")

-- END: Plugins setup

require('keymaps')
wk.register(mappings, {})
