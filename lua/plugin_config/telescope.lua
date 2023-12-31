local builtin = require('telescope.builtin')

vim.keymap.set('n', '<leader>ff', builtin.find_files)
vim.keymap.set('n', '<leader>fw', builtin.live_grep)
vim.keymap.set('n', '<leader>fe', builtin.grep_string)
vim.keymap.set('n', '<leader>fb', builtin.buffers)

require('telescope').setup{
  defaults = {
    layout_strategy = 'horizontal',
    layout_config = {
      prompt_position = 'top'
    },
    path_display = {truncate = 10}
  },
  pickers = {
    find_files = {
      hidden = true,
    },
    lsp_references = {
      fname_width = 100,
    }
  }
}
