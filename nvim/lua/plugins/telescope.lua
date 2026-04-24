return {
  "nvim-telescope/telescope.nvim",
  dependencies = {
    "nvim-lua/plenary.nvim",
    "nvim-telescope/telescope-fzf-native.nvim",
  },
  build = "make",

  config = function()
    local telescope = require("telescope")
    local builtin = require("telescope.builtin")

    telescope.setup({
      defaults = {
        prompt_prefix = " ",
        selection_caret = "➤ ",
        path_display = { "smart" },

        layout_config = {
          horizontal = {
            preview_width = 0.6,
          },
        },

        sorting_strategy = "ascending",
      },
    })

    -- load fzf extension (faster sorting)
    pcall(telescope.load_extension, "fzf")

    -- 🔑 KEYMAPS

    -- files + directories
    vim.keymap.set("n", "<leader>ff", function()
      builtin.find_files({
        find_command = { "fd", "--type", "f", "--type", "d" },
      })
    end, { desc = "Find files and directories" })

    -- search text
    vim.keymap.set("n", "<leader>fg", builtin.live_grep, { desc = "Live grep" })

    -- buffers
    vim.keymap.set("n", "<leader>fb", builtin.buffers, { desc = "Buffers" })

    -- help
    vim.keymap.set("n", "<leader>fh", builtin.help_tags, { desc = "Help" })

    -- recent files
    vim.keymap.set("n", "<leader>fo", builtin.oldfiles, { desc = "Recent files" })

    -- search inside current file
    vim.keymap.set("n", "<leader>fs", builtin.current_buffer_fuzzy_find, { desc = "Search in file" })
  end,
}
