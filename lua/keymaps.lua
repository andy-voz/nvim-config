-- define common options
local opts = {
    noremap = true,      -- non-recursive
    silent = true,       -- do not show message
}

vim.g.mapleader = " "

-----------------
-- Normal mode --
-----------------

-- Hint: see `:h vim.map.set()`
-- Better window navigation
vim.keymap.set('n', '<C-h>', '<C-w>h', opts)
vim.keymap.set('n', '<C-j>', '<C-w>j', opts)
vim.keymap.set('n', '<C-k>', '<C-w>k', opts)
vim.keymap.set('n', '<C-l>', '<C-w>l', opts)

-- Resize with arrows
-- delta: 2 lines
vim.keymap.set('n', '<C-Up>', ':resize -2<CR>', opts)
vim.keymap.set('n', '<C-Down>', ':resize +2<CR>', opts)
vim.keymap.set('n', '<C-Left>', ':vertical resize -2<CR>', opts)
vim.keymap.set('n', '<C-Right>', ':vertical resize +2<CR>', opts)

-- Telescope
local builtin = require('telescope.builtin')
vim.keymap.set('n', '<leader>ff', builtin.find_files, {})
vim.keymap.set('n', '<leader>fg', builtin.live_grep, {})
vim.keymap.set('n', '<leader>fb', builtin.buffers, {})
vim.keymap.set('n', '<leader>fh', builtin.help_tags, {})
vim.keymap.set('n', '<leader>fp', ':Telescope projects<CR>', {})
vim.keymap.set('n', '<leader>fm', ':Telescope media_files<CR>', {})

-- LSP
vim.keymap.set('n', '<leader>lf', builtin.lsp_references, { desc = 'Find all references' })
vim.keymap.set('n', '<leader>lr', vim.lsp.buf.rename, { desc = 'Rename all occurances' })
vim.keymap.set('n', '<leader>ld', vim.lsp.buf.definition, { desc = 'Go to definition' })
vim.keymap.set('n', '<leader>li', vim.lsp.buf.implementation, { desc = 'Find implementation' })
vim.keymap.set('n', '<leader>la', vim.lsp.buf.code_action, { desc = 'List code actions' })
vim.keymap.set('n', '<leader>lh', vim.lsp.buf.hover, { desc = 'Show information' })

-- Cheatsheet
vim.keymap.set('n', '<leader>?', ':Cheatsheet<CR>', {})

-- File Tree
vim.keymap.set('n', '<leader>ft', ':NvimTreeToggle<CR>', {})
vim.keymap.set('n', '<leader>ftf', ':NvimTreeFocus<CR>', {})

-- Terminal
vim.keymap.set('n', '<leader>t', ':ToggleTerm<CR>', {})

-----------------
-- Visual mode --
-----------------

-- Hint: start visual mode with the same area as the previous area and the same mode
vim.keymap.set('v', '<', '<gv', opts)
vim.keymap.set('v', '>', '>gv', opts)

local range_formatting = function()
    local start_row, _ = vim.api.nvim_buf_get_mark(0, "<")
    local end_row, _ = vim.api.nvim_buf_get_mark(0, ">")
    vim.lsp.buf.format({
        range = {
            ["start"] = { start_row, 0 },
            ["end"] = { end_row, 0 },
        },
        async = true,
    })
end

vim.keymap.set('v', '<leader>f', range_formatting, { desc = 'Range formatting' })

-----------------
-- Terminal mode --
-----------------

vim.keymap.set('t', '<C-n>', '<C-\\><C-N>', opts)
vim.keymap.set('t', '<ESC>', '<C-\\><C-N>', opts)


