local opt = vim.opt

-- line number
opt.relativenumber = true
opt.number = true

-- indentation
opt.tabstop = 2
opt.shiftwidth = 2
opt.expandtab = true
opt.autoindent = true

-- prevent wrap
opt.wrap = false

-- cursor line
opt.cursorline = true

-- enable mouse
opt.mouse:append("a")

-- system clipboard
opt.clipboard:append("unnamedplus")

--system new window right and bottom
opt.splitright = true
opt.splitbelow = true

--search ignore case sensitive
opt.ignorecase = true
opt.smartcase = true

-- outlook
opt.termguicolors = true
opt.signcolumn ="yes"
vim.cmd[[colorscheme tokyonight-moon]]
