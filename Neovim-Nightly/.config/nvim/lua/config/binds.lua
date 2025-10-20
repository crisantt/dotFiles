local bind = vim.keymap.set
vim.g.mapleader = " "
vim.g.maplocalleader = " "

-- Clear highlights on search when pressing <Esc> in normal mode
--  See `:help hlsearch`
vim.keymap.set('n', '<Esc>', '<cmd>nohlsearch<CR>')

-- Center screen when jumping
bind("n", "n", "nzzzv", { desc = "Next search result (centered)" })
bind("n", "N", "Nzzzv", { desc = "Previous search result (centered)" })
bind("n", "<C-d>", "<C-d>zz", { desc = "Half page down (centered)" })
bind("n", "<C-u>", "<C-u>zz", { desc = "Half page up (centered)" })

-- Buffer navigation
bind("n", "<leader>bn", "<Cmd>bnext<CR>", { desc = "Next buffer" })
bind("n", "<leader>bp", "<Cmd>bprevious<CR>", { desc = "Previous buffer" })

-- Better window navigation
bind("n", "<C-h>", "<C-w>h", { desc = "Move to left window" })
bind("n", "<C-j>", "<C-w>j", { desc = "Move to bottom window" })
bind("n", "<C-k>", "<C-w>k", { desc = "Move to top window" })
bind("n", "<C-l>", "<C-w>l", { desc = "Move to right window" })

-- Splitting & Resizing
bind("n", "<leader>sv", "<Cmd>vsplit<CR>", { desc = "Split window vertically" })
bind("n", "<leader>sh", "<Cmd>split<CR>", { desc = "Split window horizontally" })
bind("n", "<C-Up>", "<Cmd>resize +2<CR>", { desc = "Increase window height" })
bind("n", "<C-Down>", "<Cmd>resize -2<CR>", { desc = "Decrease window height" })
bind("n", "<C-Left>", "<Cmd>vertical resize -2<CR>", { desc = "Decrease window width" })
bind("n", "<C-Right>", "<Cmd>vertical resize +2<CR>", { desc = "Increase window width" })

-- Better indenting in visual mode
bind("v", "<", "<gv", { desc = "Indent left and reselect" })
bind("v", ">", ">gv", { desc = "Indent right and reselect" })

-- Better J behavior
bind("n", "J", "mzJ`z", { desc = "Join lines and keep cursor position" })

-- Quick config editing
bind("n", "<leader>rc", "<Cmd>e ~/dotFiles/Neovim-Nightly/.config/nvim/init.lua<CR>", { desc = "Edit config" })

-- File Explorer
bind("n", "<leader>e", "<Cmd>Ex<CR>", { desc = "Open Netrw" })

-- Quitting
bind("n", "<S-q>", "<Cmd>quit<CR>", { desc = "Quit" })
bind("n", "<leader>w", "<Cmd>write<CR>", { desc = "Write" })
bind("n", "<leader>s", "<Cmd>source<CR>", { desc = "Write" })
