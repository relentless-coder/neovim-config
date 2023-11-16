require('nvim-treesitter.configs').setup{
  ensure_installed = {'javascript', 'typescript', 'lua', 'css', 'html', 'bash', 'sql', 'json' },
  sync_install = false,
  auto_install = true,
  highlight = {
    enabled = true
  }
}
