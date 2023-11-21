vim.o.termguicolors = true
-- require('tokyodark').setup {}
require('kanagawa').setup {
  theme = "dragon",
}
--[[ require('catppuccin').setup {
  flavour = "macchiato"
} ]]
vim.cmd[[ colorscheme kanagawa ]]
