return {
  "folke/tokyonight.nvim",
  priority = 1000,
  config = function()
    require("tokyonight").setup({
      style = "night",
      transparent = false,
      styles = {
        comments = { italic = true },
        keywords = { italic = true },
      },
      on_colors = function(colors)
        colors.bg = "#0a0f1f"
        colors.bg_dark = "#070b14"
        colors.bg_float = "#0f1629"
        colors.blue = "#4db5ff"
        colors.blue0 = "#3aa8ff"
        colors.blue1 = "#66c2ff"
      end,
    })

    vim.cmd.colorscheme("tokyonight-night")

    vim.api.nvim_set_hl(0, "Cursor", { bg = "#4db5ff" })
    vim.api.nvim_set_hl(0, "CursorLineNr", { fg = "#4db5ff", bold = true })
  end
}
