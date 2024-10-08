return {
  "catppuccin/nvim",
  lazy = false,
  priority = 1000,
  config = function()
    local theme = require('catppuccin')
    local colorscheme = vim.cmd.colorscheme
    theme.setup()
    colorscheme "catppuccin-mocha"
  end
}
