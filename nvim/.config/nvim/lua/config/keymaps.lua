local bind = vim.keymap.set

-- Basic Config Write/Quit/Source/File Explorer
bind("n", "<leader>e", "<cmd>Ex<CR>", { desc = "Open File Explorer" })
bind("n", "<leader>q", "<cmd>q<CR>", { desc = "Quit File" })
bind("n", "<leader>w", "<cmd>w<CR>", { desc = "Write File" })
bind("n", "<leader>so", "<cmd>so<CR>", { desc = "Source File" })

-- Clear highlight after searching
vim.keymap.set("n", "<Esc>", "<cmd>nohlsearch<CR>", { desc = "Remove Highligh" })

-- Window Navigation
bind("n", "<C-h>", "<C-w>h", { desc = "Move to left window" })
bind("n", "<C-j>", "<C-w>j", { desc = "Move to bottom window" })
bind("n", "<C-k>", "<C-w>k", { desc = "Move to top window" })
bind("n", "<C-l>", "<C-w>l", { desc = "Move to right window" })

-- Split Window
bind("n", "<leader>sv", "<Cmd>vsplit<CR>", { desc = "Split window vertically" })
bind("n", "<leader>sh", "<Cmd>split<CR>", { desc = "Split window horizontally" })
bind("n", "<C-Up>", "<Cmd>resize +2<CR>", { desc = "Increase window height" })
bind("n", "<C-Down>", "<Cmd>resize -2<CR>", { desc = "Decrease window height" })
bind("n", "<C-Left>", "<Cmd>vertical resize -2<CR>", { desc = "Decrease window width" })
bind("n", "<C-Right>", "<Cmd>vertical resize +2<CR>", { desc = "Increase window width" })

-- Diagnostics
bind("n", "<leader>dq", vim.diagnostic.setloclist, { desc = "Open diagnostic [Q]uickfix list" })

-- Move lines up/down
bind("n", "<A-j>", ":m .+1<CR>==", { desc = "Move line down" })
bind("n", "<A-k>", ":m .-2<CR>==", { desc = "Move line up" })
bind("v", "<A-j>", ":m '>+1<CR>gv=gv", { desc = "Move selection down" })
bind("v", "<A-k>", ":m '<-2<CR>gv=gv", { desc = "Move selection up" })

-- Tab
bind("n", "<A-t>", ":tabnew<CR>", { desc = "Create new tab" })
bind("n", "<A-Tab>", ":+tabnext<CR>", { desc = "Navigate through tabs" })
