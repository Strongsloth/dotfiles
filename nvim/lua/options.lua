require "nvchad.options"

local opt = vim.opt
local o = vim.o
local wo = vim.wo

opt.relativenumber = true
opt.tabstop = 2
opt.shiftwidth = 2
opt.softtabstop = 4
opt.expandtab = true
opt.spelllang = "en_us"
opt.spell = true
opt.termguicolors = true

o.cursorlineopt = "both"
o.shell = "pwsh"

wo.number = true
wo.relativenumber = true
