return {
  {
    "folke/snacks.nvim",
    priority = 1000,
    lazy = false,
    opts = {
      picker = { enabled = true },
      explorer = { enabled = true },
      indent = { enabled = true },
      notifier = { enabled = true },
    },
    keys = {
      -- Open file explorer
      { "<leader>e", function() Snacks.explorer() end, desc = "File Explorer" },
      -- Open picker
      { "<leader><space>", function() Snacks.picker.files() end, desc = "Find Files" },
      { "<leader>fg", function() Snacks.picker.grep() end, desc = "Grep" },
      { "<leader>fb", function() Snacks.picker.buffers() end, desc = "Buffers" },
    },
  },
  -- Disable netrw since we're using snacks explorer
  {
    "neovim/nvim-lspconfig",
    dependencies = {
      {
        "stevearc/oil.nvim",
        opts = {},
        config = function()
          vim.g.loaded_netrw = 1
          vim.g.loaded_netrwPlugin = 1
        end,
      },
    },
  },
}
