local actions = require("telescope.actions")

require("telescope").setup({
  extensions = {
    undo = {},
  },
  defaults = {
    layout_config = {
      width = 0.75,
      height = 0.95,
      prompt_position = "bottom",
      preview_height = 0.60,
    },
    mappings = {
      i = {
        ["<esc>"] = actions.close,
      },
    },
    layout_strategy = "vertical",
  },
})

require("telescope").load_extension("undo")
