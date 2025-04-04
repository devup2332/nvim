return {
  'nvim-treesitter/nvim-treesitter',
  run = function()
    local ts_update = require('nvim-treesitter.install').update({ with_sync = true })
    ts_update()
  end,
  config = function()
    local treesitter = require "nvim-treesitter.configs"

    treesitter.setup {
      ensure_installed = {
        "bash",
        "c",
        "astro",
        "diff",
        "html",
        "javascript",
        "jsdoc",
        "json",
        "jsonc",
        "lua",
        "luadoc",
        "luap",
        "markdown",
        "markdown_inline",
        "python",
        "query",
        "regex",
        "toml",
        "tsx",
        "typescript",
        "vim",
        "vimdoc",
        "yaml",
        "sql",
        "graphql",
        "go",
        "prisma"
      },
      highlight = {
        enable = true,
      },
    }
  end
}
