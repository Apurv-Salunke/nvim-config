return {
  -- 1. Disable Bufferline (Vertical space is precious)
  -- Use Snacks.picker.buffers or <leader>fb to switch between buffers instead
  { "akinsho/bufferline.nvim", enabled = false },

  -- 2. Minimalist Lualine (Statusline)
  {
    "nvim-lualine/lualine.nvim",
    opts = function(_, opts)
      -- Minimalist sections: [Mode | Branch] [Filename] [Filetype | Line:Col]
      opts.options.section_separators = { left = "", right = "" }
      opts.options.component_separators = { left = "", right = "" }
      opts.options.theme = "catppuccin" -- Force it to match

      opts.sections = {
        lualine_a = { { "mode", upper = true } },
        lualine_b = { { "branch", icon = "" } },
        lualine_c = { { "filetype", icon_only = true, separator = "", padding = { left = 1, right = 0 } }, { "filename", path = 1 } },
        lualine_x = { "diagnostics" },
        lualine_y = { "progress" },
        lualine_z = { "location" },
      }
    end,
  },

  -- 3. Noice: Keep it minimalist
  {
    "folke/noice.nvim",
    opts = {
      lsp = {
        progress = { enabled = false }, -- Hide the loading progress popups
      },
      presets = {
        bottom_search = true, -- use a classic bottom command line for search
        command_palette = true, -- position the cmdline and popupmenu together
        long_message_to_split = true, -- long messages will be sent to a split
        inc_rename = false, -- enables an input dialog for inc-rename.nvim
        lsp_doc_border = true, -- add a border to hover docs and signature help
      },
    },
  },

  -- 4. Indent Blankline: Minimalist guides
  {
    "lukas-reineke/indent-blankline.nvim",
    opts = {
      indent = {
        char = "▏", -- Very thin guide
      },
      scope = { enabled = false }, -- Hide the scope (it's often too bright)
    },
  },

  -- 5. Zen Mode (Perfect for minimalist focused coding)
  {
    "folke/zen-mode.nvim",
    cmd = "ZenMode",
    opts = {
      window = {
        backdrop = 0.95,
        width = 120,
        options = {
          signcolumn = "no",
          number = false,
          relativenumber = false,
          cursorline = false,
          cursorcolumn = false,
          foldcolumn = "0",
          list = false,
        },
      },
      plugins = {
        options = { enabled = true },
        twilight = { enabled = true },
        gitsigns = { enabled = false },
        tmux = { enabled = false },
      },
    },
    keys = {
      { "<leader>z", "<cmd>ZenMode<cr>", desc = "Zen Mode" },
    },
  },
}
