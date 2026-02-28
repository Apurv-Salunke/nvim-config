return {
  {
    "OXY2DEV/markview.nvim",
    lazy = false, -- Recommended to load on startup for markdown files
    dependencies = {
      "nvim-treesitter/nvim-treesitter",
      "nvim-tree/nvim-web-devicons",
    },
    opts = {
      -- You can customize the look here. 
      -- The defaults are already very "modern" compared to other plugins.
      preview = {
        filetypes = { "markdown", "quarto" },
        ignore_buftypes = {},
      },
    },
  },
}
