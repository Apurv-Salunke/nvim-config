return {
  -- Neo-tree file explorer (LazyVim default)
  {
    "nvim-neo-tree/neo-tree.nvim",
    cmd = "Neotree",
    keys = {
      { "<leader>e", "<leader>e", desc = "Explorer NeoTree" },
      { "<leader>o", function() require("neo-tree.command").execute({ toggle = true, dir = vim.uv.cwd() }) end, desc = "Explorer NeoTree" },
    },
    opts = {
      sources = { "filesystem", "buffers", "git_status" },
      open_files_do_not_replace_types = { "terminal", "Trouble", "trouble", "qf", "Outline" },
      filesystem = {
        bind_to_cwd = false,
        follow_current_file = { enabled = true },
        use_libuv_file_watcher = true,
      },
      window = {
        mappings = {
          ["l"] = "open",
          ["h"] = "close_node",
          ["<space>"] = "none",
        },
      },
      default_component_configs = {
        indent = {
          indent_size = 2,
          padding = 1,
          indent_guides = {
            enabled = true,
            width = 1,
          },
        },
      },
    },
  },
}
