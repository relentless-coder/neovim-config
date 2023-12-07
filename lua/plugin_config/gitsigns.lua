require('gitsigns').setup {
  signs = {
    add = {text = '+'},
    change = {text = '~'},
    delete = {text = '-'},
    topdelete = {text = '-'},
    changedelete = {text = '-+'}
  },
  current_line_blame = true,
  current_line_blame_opts = {
    delay = 100,
    virt_text = false
  },
  current_line_blame_formatter = '<author>, <author_time:%d/%m/%Y@%T>',
  on_attach = function (bufnr)
     local gs = package.loaded.gitsigns
     local function map(mode, l, r, opts)
       opts = opts or {}
       opts.buffer = bufnr
       vim.keymap.set(mode, l, r, opts)
     end
     map('n', '<leader>hd', gs.preview_hunk)
     map('n', '<leader>hf', function() gs.blame_line{full=true} end)
     map('n', '<leader>hl', gs.toggle_current_line_blame)
  end
}
