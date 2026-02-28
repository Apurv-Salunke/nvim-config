-- Options are automatically loaded before lazy.nvim startup
-- Default options that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/options.lua
-- Add any additional options here

-- Disable netrw (neo-tree replaces it)
vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1

local opt = vim.opt

-- Minimalist numbers (only current line number)
opt.relativenumber = false -- Relative numbers can be visually noisy
opt.number = true

-- Focus on content
opt.cursorline = false -- Can be distracting, only enable if you move the cursor a lot
opt.signcolumn = "yes" -- Keep it fixed to prevent shifting, but subtle
opt.laststatus = 3     -- Global statusline (cleaner with only one)

-- Subtle invisible characters
opt.list = false -- Hide the "dots" for spaces/tabs

-- Smooth scroll for better visual experience
opt.smoothscroll = true
