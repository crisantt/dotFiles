local o = vim.opt

-- Basic Settings
o.number = true
o.relativenumber = true
o.wrap = false
o.cursorline = true
o.scrolloff = 10
o.sidescrolloff = 10

-- Indention
o.tabstop = 2
o.shiftwidth = 3
o.softtabstop = 3
o.expandtab = true
o.smartindent = true
o.autoindent = true
o.grepprg = "rg --vimgrep"
o.grepformat = "%f:%l:%c:%m"

-- Search Settings
o.ignorecase = true
o.smartcase = true
o.hlsearch = true
o.incsearch = true

-- Visual Settings
o.termguicolors = true
o.winborder = "rounded"
o.winblend = 0
o.signcolumn = "yes"
o.pumblend = 10
o.showmode = false
o.conceallevel = 0
o.concealcursor = ""
o.lazyredraw = false
o.redrawtime = 10000
o.maxmempattern = 20000
o.synmaxcol = 300

o.backup = false -- Don't create backup files
o.writebackup = false -- Don't backup before overwriting
o.swapfile = false -- Don't create swap files
o.undofile = true -- Persistent undo
o.updatetime = 300 -- Time in ms to trigger CursorHold
o.timeoutlen = 500 -- Time in ms to wait for mapped sequence
o.ttimeoutlen = 0 -- No wait for key code sequences
o.autoread = true -- Auto-reload file if changed outside
o.autowrite = false -- Don't auto-save on some events
o.diffopt:append("vertical") -- Vertical diff splits
o.diffopt:append("algorithm:patience") -- Better diff algorithm
o.diffopt:append("linematch:60") -- Better diff highlighting (smart line matching)

-- Set undo directory and ensure it exists
local undodir = "~/.local/share/nvim/undodir" -- Undo directory path
o.undodir = vim.fn.expand(undodir) -- Expand to full path
local undodir_path = vim.fn.expand(undodir)
if vim.fn.isdirectory(undodir_path) == 0 then
	vim.fn.mkdir(undodir_path, "p") -- Create if not exists
end

-- Behavior Settings
o.errorbells = false -- Disable error sounds
o.backspace = "indent,eol,start" -- Make backspace behave naturally
o.autochdir = false -- Don't change directory automatically
o.iskeyword:append("-") -- Treat dash as part of a word
o.path:append("**") -- Search into subfolders with `gf`
o.selection = "inclusive" -- Use inclusive selection
o.mouse = "a" -- Enable mouse support
o.clipboard:append("unnamedplus") -- Use system clipboard
o.modifiable = true -- Allow editing buffers
o.encoding = "UTF-8" -- Use UTF-8 encoding
o.wildmenu = true -- Enable command-line completion menu
o.wildmode = "longest:full,full" -- Completion mode for command-line
o.wildignorecase = true -- Case-insensitive tab completion in commands

-- Cursor Settings
o.guicursor = {
	"n-v-c:block", -- Normal, Visual, Command-line
	"i-ci-ve:block", -- Insert, Command-line Insert, Visual-exclusive
	"r-cr:hor20", -- Replace, Command-line Replace
	"o:hor50", -- Operator-pending
	"a:blinkwait700-blinkoff400-blinkon250-Cursor/lCursor", -- All modes: blinking & highlight groups
	"sm:block-blinkwait175-blinkoff150-blinkon175", -- Showmatch mode
}

-- Folding Settings
o.foldmethod = "expr" -- Use expression for folding
o.foldexpr = "v:lua.vim.treesitter.foldexpr()" -- Use treesitter for folding
o.foldlevel = 99 -- Keep all folds open by default

-- Split Behavior
o.splitbelow = true -- Horizontal splits open below
o.splitright = true -- Vertical splits open to the right
