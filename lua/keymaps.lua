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


