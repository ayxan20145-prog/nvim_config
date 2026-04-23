return {
  "andweeb/presence.nvim",
  config = function()
    require("presence").setup({
      auto_update = true,
      neovim_image_text = "Neovim",
      main_image = "neovim",
      show_time = true,
      editing_text = "Editing %s",
      file_explorer_text = "Browsing %s",
      git_commit_text = "Committing changes",
      plugin_manager_text = "Managing plugins",
      reading_text = "Reading %s",
      workspace_text = "Working on %s",
    })
  end
}
