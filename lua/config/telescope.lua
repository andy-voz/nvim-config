local map = vim.keymap.set

local builtin = require("telescope.builtin")
local telescope = require("telescope")

map("n", "<leader>ff", builtin.find_files, { 
    noremap = true, 
    silent = true, 
    desc = "Find files" 
})

map("n", "<leader>fg", builtin.live_grep, {
    noremap = true,
    silent = true,
    desc = "Live Grep"
})

map("n", "<leader>fb", builtin.buffers, {
    noremap = true,
    silent = true,
    desc = "List Buffers"
})

map("n", "<leader>fh", builtin.help_tags, {
    noremap = true,
    silent = true,
    desc = "Help tags"
})

map("n", "<leader>fp", function()
  require("telescope").extensions.projects.projects()
end, { 
    noremap = true, 
    silent = true, 
    desc = "Projects" 
})
