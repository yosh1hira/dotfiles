-- BASIC SETTINGS

local g, opt = vim.g, vim.opt

vim.cmd[[ colorscheme gruvbox-material ]]

opt.termguicolors = true

opt.number = true
opt.relativenumber = true
opt.numberwidth = 6
opt.cmdheight = 2

opt.autoindent = true
opt.shiftwidth = 2
opt.tabstop = 2
opt.expandtab = true

opt.scrolloff = 15

opt.swapfile = false

opt.splitbelow = true
opt.splitright = true

opt.virtualedit = "onemore"

g.python3_host_prog = "/usr/local/bin/python3"
g.loaded_python_provider = 0
g.loaded_ruby_provider = 0
g.loaded_node_provider = 0
g.loaded_perl_provider = 0

-- MAPPING

local map = vim.api.nvim_set_keymap
g.mapleader = ","

--map("n", "<F1>", "", { noremap = true })
--map("n", "<F2>", "", { noremap = true })
map("n", "<F3>", "", { noremap = true })
map("n", "<F4>", "", { noremap = true })
map("n", "<F5>", "", { noremap = true })
map("n", "<F6>", "", { noremap = true })
map("n", "<F7>", "", { noremap = true })
map("n", "<F8>", "", { noremap = true })
map("n", "<F9>", "", { noremap = true })
map("n", "<F10>", "", { noremap = true })
map("n", "<F11>", "", { noremap = true })
map("n", "<F12>", "", { noremap = true })

map("i", "<F1>", "", { noremap = true })
map("i", "<F2>", "", { noremap = true })
map("i", "<F3>", "", { noremap = true })
map("i", "<F4>", "", { noremap = true })
map("i", "<F5>", "", { noremap = true })
map("i", "<F6>", "", { noremap = true })
map("i", "<F7>", "", { noremap = true })
map("i", "<F8>", "", { noremap = true })
map("i", "<F9>", "", { noremap = true })
map("i", "<F10>", "", { noremap = true })
map("i", "<F11>", "", { noremap = true })
map("i", "<F12>", "", { noremap = true })

map("t", "<F1>", "", { noremap = true })
map("t", "<F2>", "", { noremap = true })
map("t", "<F3>", "", { noremap = true })
map("t", "<F4>", "", { noremap = true })
map("t", "<F5>", "", { noremap = true })
map("t", "<F6>", "", { noremap = true })
map("t", "<F7>", "", { noremap = true })
map("t", "<F8>", "", { noremap = true })
map("t", "<F9>", "", { noremap = true })
map("t", "<F10>", "", { noremap = true })
map("t", "<F11>", "", { noremap = true })
map("t", "<F12>", "", { noremap = true })

map("n", "<Enter><Enter>", "<Cmd>w<Cr>", { noremap = true })

map("n", "j", "gj", { noremap = true })
map("n", "k", "gk", { noremap = true })
map("n", "gj", "j", { noremap = true })
map("n", "gk", "k", { noremap = true })

map("t", "<ESC>", "<C-\\><C-n>", {})

