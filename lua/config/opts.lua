--
-- All additional options for nvim. A misc bucket for when I don't know where to put things.
--

-- Explorer Settings
vim.g.netrw_browse_split = 0
vim.g.netrw_banner = 10
vim.g.netrw_winsize = 25

-- Disable insert cursor like old Vim.
-- vim.opt.guicursor = ""

-- Line Numbers
vim.opt.nu = true
vim.opt.relativenumber = true

-- Tab spacing
vim.opt.tabstop = 4
vim.opt.softtabstop = 4
vim.opt.shiftwidth = 4
vim.opt.expandtab = true

-- Auto indent (Clashes with LSPs)
-- vim.opt.smartindent = true

-- Disable line wrap
vim.opt.wrap = false

-- Harpoon causes issues with temp files. These kills those.
vim.opt.swapfile = false
vim.opt.backup = false

-- Saves undo's to disc, allowing them to persist between sessions.
vim.opt.undodir = "C:/Users/Admin/AppData/Local/nvim/undo"
vim.opt.undofile = true

-- Hides search higlighting
vim.opt.hlsearch = false

-- Incremental search
vim.opt.incsearch = true

-- Shows colors in :terminal
-- Not working for me right now...
vim.opt.termguicolors = true

-- Number of lines from top or bottom of screens to start scrolling
vim.opt.scrolloff = 8

-- Shows symbols (Like errors) on the left of the line numbers.
vim.opt.signcolumn = "yes"

-- Speed to check for things like line linting etc
vim.opt.updatetime = 50

-- Visual column for lines being too long
vim.opt.colorcolumn = "80"
