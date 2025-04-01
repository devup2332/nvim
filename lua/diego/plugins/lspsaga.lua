return {
  'nvimdev/lspsaga.nvim',
  after = 'nvim-lspconfig',
  config = function()
    local status_ok, lspsaga = pcall(require, 'lspsaga')

    if not status_ok then
      return
    end
    local keymap = vim.keymap.set


    lspsaga.setup({
      layout = 'float',
      finder = {
        max_height = 0.6,
        keys = {
          toggle_or_open = '<cr>',
          quit = '<esc>',
        },
      },
    })
    local opts = { noremap = true, silent = true }

    keymap("n", "gr", "<cmd>Lspsaga finder ref<CR>", opts)
    keymap('n', 'gd', "<cmd>Lspsaga goto_definition<CR>", opts)
    keymap('n', 'K', "<cmd>Lspsaga hover_doc<CR>", opts)
  end
}
