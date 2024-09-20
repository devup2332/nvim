return {
  'nvim-lualine/lualine.nvim',
  dependencies = { 'kyazdani42/nvim-web-devicons', opt = true },
  config = function()
    require('lualine').setup {
      sections = {
        lualine_c = {
          {
            'filename',
            path = 1
          }
        }
      }
    }
  end
}
