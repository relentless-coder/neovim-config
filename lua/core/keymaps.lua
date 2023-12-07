vim.g.mapleader = ' '
vim.g.maplocalleader = ' '

vim.opt.showcmd = false

vim.opt.softtabstop = 2
vim.opt.shiftwidth = 2
vim.opt.expandtab = true
vim.opt.shiftround = true
vim.opt.number = true
vim.opt.ignorecase = true
vim.opt.smartcase = true


vim.keymap.set('n', '<leader>h', ':nohlsearch<CR>')
vim.keymap.set('n', '<leader>gg', ':LazyGit<CR>')
vim.keymap.set('v', '<leader>cp', '"+y')
