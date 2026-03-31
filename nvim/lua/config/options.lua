-- Options are automatically loaded before lazy.nvim startup
-- Default options that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/options.lua
-- Add any additional options here
vim.opt.swapfile = false
vim.opt.directory = vim.fn.stdpath("state") .. "/swap//"
vim.opt.wrap = false
vim.opt.linebreak = false
vim.opt.breakindent = false
vim.opt.cursorline = false
vim.opt.cursorcolumn = false
vim.lsp.set_log_level("error")
