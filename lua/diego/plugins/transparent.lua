return {
  "xiyaowong/nvim-transparent",
  config = function()
    local transparent = require('transparent')
    return

        transparent.setup({
          extra_groups = { -- table/string: additional groups that should be clear
            -- In particular, when you set it to 'all', that means all avaliable groups

            -- example of akinsho/nvim-bufferline.lua
            "BufferLineTabClose",
            "BufferlineBufferSelected",
            "BufferLineFill",
            "BufferLineBackground",
            "BufferLineSeparator",
            "BufferLineIndicatorSelected",
            "NeoTreeNormal",
            "NeoTreeNormalNC",
            "Telescope",
            "all"
          },
        })
  end
}
