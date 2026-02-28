return {
  {
    "folke/snacks.nvim",
    priority = 1000,
    lazy = false,
    opts = {
      picker = { enabled = true },
      explorer = { enabled = false }, -- Using neo-tree instead
      indent = { enabled = false },   -- Using indent-blankline instead for more control
      notifier = { enabled = true, style = "compact" }, -- compact notifications
      scroll = { enabled = false },   -- Disable snacks smooth scrolling (it can be jittery)
    },
    keys = {
      { "<leader><space>", function() Snacks.picker.files() end, desc = "Find Files" },
      { "<leader>fg", function() Snacks.picker.grep() end, desc = "Grep" },
      { "<leader>fb", function() Snacks.picker.buffers() end, desc = "Buffers" },
      -- Disable default explorer mappings from LazyVim
      { "<leader>e", false },
      { "<leader>E", false },
    },
  },
}
