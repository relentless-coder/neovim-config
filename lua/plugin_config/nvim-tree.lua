vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1

require('nvim-tree').setup({
  git = {
    enable = false,
  }
})

vim.keymap.set('n', '<leader>o', ':NvimTreeToggle<CR>')
vim.keymap.set('n', '<leader>e', ':NvimTreeFindFile<CR>')
vim.keymap.set('n', '<leader>r', ':NvimTreeFocus<CR>')
