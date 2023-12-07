local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"

if not vim.loop.fs_stat(lazypath) then
  vim.fn.system({
    "git",
    "clone",
    "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git",
    "--branch=stable", -- latest stable release
    lazypath,
  })
end

vim.opt.rtp:prepend(lazypath)

local plugins = {
  {
    "nvim-tree/nvim-tree.lua",
    version = "*",
    lazy = false,
    dependencies = {
      "nvim-tree/nvim-web-devicons",
    },
  },
  'nvim-lualine/lualine.nvim',
  {
    'nvim-telescope/telescope.nvim',
    tag = '0.1.4',
    dependencies = { 'nvim-lua/plenary.nvim' }
  },
  {"nvim-treesitter/nvim-treesitter", build = ":TSUpdate"},
  'williamboman/mason.nvim',
  'williamboman/mason-lspconfig.nvim',
  'https://github.com/neovim/nvim-lspconfig',
  'hrsh7th/nvim-cmp',
  'hrsh7th/cmp-nvim-lsp',
  {
    "L3MON4D3/LuaSnip",
    -- follow latest release.
    version = "v2.*", -- Replace <CurrentMajor> by the latest released major (first number of latest release)
    dependencies = { "rafamadriz/friendly-snippets" },

  },
  'saadparwaiz1/cmp_luasnip',
  'cohama/lexima.vim',
  'hrsh7th/cmp-buffer',
  { "lukas-reineke/indent-blankline.nvim", main = "ibl", opts = {} },
  'lewis6991/gitsigns.nvim',
  {
    "kdheepak/lazygit.nvim",
    dependencies = {
      "nvim-lua/plenary.nvim",
    },
  },
  "rebelot/kanagawa.nvim",
  {
    'numToStr/Comment.nvim',
    opts = {
      -- add any options here
    },
    lazy = false,
  },
  {'kevinhwang91/nvim-ufo', dependencies = {'kevinhwang91/promise-async'}}
}
local opts = {}

return require("lazy").setup(plugins, opts)
