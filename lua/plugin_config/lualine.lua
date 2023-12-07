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
    lualine_c = {
      {
        'diagnostics',
        sources = {'nvim_lsp'},
        sections = {'error', 'warn'},
        symbols = {
          error = '!',
          warn = '/'
        }
      }
    },
    lualine_x = {'branch'},
    lualine_y = {'b:gitsigns_blame_line'},
    lualine_z = {'location'}
  }
}
