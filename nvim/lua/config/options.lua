vim.g.mapleader = "," -- Устанавливаем лидер-клавишу
vim.opt.clipboard = 'unnamedplus'
-- local opts = vim.opt

-- vim.opt.guicursor = "n-v-c-sm:block,i-ci-ve:block,r-cr-o:block"

-- vim.opt.guicursor = "n-v-c-sm:block,i-ci-ve:ver25,r-cr-o:hor20"
vim.opt.guicursor = "n-v-i-sm:block,c-ci-ve:ver20,r-cr-o:hor20,a:blinkwait700-blinkoff400-blinkon250-Cursor/lCursor"
-- Основные настройки
vim.opt.number = true
vim.opt.relativenumber = true
vim.opt.tabstop = 2
vim.opt.shiftwidth = 2
vim.opt.showtabline = 2
vim.opt.expandtab = true
vim.opt.termguicolors = true
vim.opt.colorcolumn = "80"
vim.opt.signcolumn = "yes"

vim.opt.clipboard = "unnamedplus"

-- Прозрачный фон
vim.api.nvim_set_hl(0, "Normal", { bg = "none" })
vim.api.nvim_set_hl(0, "NormalFloat", { bg = "none" })

