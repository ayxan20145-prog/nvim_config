return {
  "lewis6991/gitsigns.nvim",
  config = function()
    require("gitsigns").setup({
      signs = {
        add = { text = "+" },
        change = { text = "~" },
        delete = { text = "_" },
        topdelete = { text = "‾" },
        changedelete = { text = "~" },
      },

      signcolumn = true,
      numhl = false,
      linehl = false,

      watch_gitdir = {
        interval = 1000,
        follow_files = true,
      },

      attach_to_untracked = true,

      current_line_blame = false,

      on_attach = function(bufnr)
        local gs = package.loaded.gitsigns
        local map = function(mode, l, r)
          vim.keymap.set(mode, l, r, { buffer = bufnr })
        end

        map("n", "]c", gs.next_hunk)
        map("n", "[c", gs.prev_hunk)

        map("n", "<leader>hs", gs.stage_hunk)
        map("n", "<leader>hr", gs.reset_hunk)
        map("n", "<leader>hp", gs.preview_hunk)
      end,
    })
  end,
}
