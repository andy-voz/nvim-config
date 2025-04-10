local wk = require("which-key")

local telescope = require("telescope")
local builtin = require("telescope.builtin")

wk.register({
  ["<leader>"] = {
    name = "Main",
    f = {
      name = "Find",
      f = { builtin.find_files, "Find Files" },
      g = { builtin.live_grep, "Grep in Files" },
      b = { builtin.buffers, "Find Buffers" },
      h = { builtin.help_tags, "Help Tags" },
    },
    p = { telescope.extensions.projects.projects, "Projects" },
    e = { "<cmd>NvimTreeToggle<CR>", "Toggle File Explorer" },
    r = { vim.lsp.buf.rename, "Rename Symbol" },
    ca = { vim.lsp.buf.code_action, "Code Action" },
    sh = { "<cmd>ClangdSwitchSourceHeader<CR>", "Switch Source/Header" },
  },
})
