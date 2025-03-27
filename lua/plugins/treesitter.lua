return {
  {
    "nvim-treesitter/nvim-treesitter",
    build = function()
      require("nvim-treesitter.install").update({ with_sync = true })()
    end,
    config = function()
      require("nvim-treesitter.configs").setup({
        ensure_installed = {
          "c",
          "lua",
          "javascript",
          "swift",
        },
        auto_install = true,
        highlight = {
          enable = true,
        },
        indent = {
          enable = true,
        },
        refactor = {
          highlight_definitions = {
            enable = true, -- Подсветка определения переменной
          },
          highlight_current_scope = {
            enable = true, -- Подсветка текущего скоупа
          },
        },
      })
    end,
  },
}
