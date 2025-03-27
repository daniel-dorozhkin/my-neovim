-- Formatting
vim.api.nvim_create_user_command("ReloadKeymaps", function()
  package.loaded["config.keymaps"] = nil
  require("config.keymaps")
  print("Keymaps reloaded successfully!")
end, { desc = "Reload the keymaps file" })

-- Swift
vim.api.nvim_create_user_command("SwiftRun", function()
  local file_path = vim.fn.expand("%:p")

  if vim.bo.buftype == "" then
    vim.cmd("w") -- Save only if it's a normal buffer
  end

  local current_win = vim.api.nvim_get_current_win()

  require("toggleterm.terminal").Terminal
      :new({
        cmd = "swift " .. file_path,
        direction = "horizontal",
        close_on_exit = false,
      })
      :toggle()

  vim.defer_fn(function()
    vim.api.nvim_set_current_win(current_win)
  end, 50)
end, { desc = "Build current Swift file." })
