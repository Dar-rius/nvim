require("melkey.autocmds")
require("melkey.options")
require("melkey.keymaps")

local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
	vim.fn.system({
		"git",
		"clone",
		"--filter=blobvim.fn.stdpath:none",
		"https://github.com/folke/lazy.nvim.git",
		"--branch=stable", -- latest stable release

		lazypath,
	})
end
vim.opt.rtp:prepend(lazypath)

require("lazy").setup("melkey.plugins")
vim.opt.termguicolors = true
vim.cmd.colorscheme("catppuccin")
