require('lualine').setup {
  options = {
    icons_enabled = true,
    theme = 'dracula-nvim',
  },
  sections = {
    lualine_a = {'mode'},
    lualine_b = {
      {
        'filename',
        path = 1
      }
    },
    lualine_c = {},
    lualine_x = {'branch'},
    lualine_z = {'location'}
  }
}
