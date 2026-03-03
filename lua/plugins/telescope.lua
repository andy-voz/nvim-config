return {
  "nvim-telescope/telescope.nvim",
  tag = "v0.2.1",
  dependencies = {
    "nvim-lua/plenary.nvim",
    "ahmedkhalf/project.nvim", -- needed here to make sure it's loaded before telescope's config
  },
  config = function()
    require("telescope").load_extension("projects")
  end,
}
