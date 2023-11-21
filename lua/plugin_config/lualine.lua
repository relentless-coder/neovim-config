require('lualine').setup {
  options = {
    icons_enabled = true,
    theme = 'kanagawa',
    section_separators = { left = '', right = '' },
    component_separators = { left = '', right = '' }
  },
  sections = {
    lualine_a = {'mode'},
    lualine_b = {
      {
        'filename',
        path = 1
      }
    },
    lualine_c = {'branch'},
    lualine_x = {'b:gitsigns_blame_line'},
    lualine_z = {'location'}
  }
}
