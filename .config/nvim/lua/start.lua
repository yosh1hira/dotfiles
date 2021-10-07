-- BASIC SETTINGS

local g, opt = vim.g, vim.opt

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
