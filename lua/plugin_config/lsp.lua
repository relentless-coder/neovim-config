local servers = {'lua_ls', 'tsserver', 'sqlls', 'cssls', 'bashls', 'eslint', 'gopls', 'clangd'}
local capabilities = require('cmp_nvim_lsp').default_capabilities()
require('mason').setup()
require('mason-lspconfig').setup({
  ensure_installed = servers
})

capabilities.textDocument.foldingRange = {
    dynamicRegistration = false,
    lineFoldingOnly = true
}

for _, ls in pairs(servers) do
  require('lspconfig')[ls].setup{
    capabilities = capabilities
  }
end

vim.keymap.set('n', 'ge', vim.diagnostic.open_float)
vim.keymap.set('n', '[d', vim.diagnostic.goto_prev)
vim.keymap.set('n', ']d', vim.diagnostic.goto_next)
vim.keymap.set('n', '<space>q', vim.diagnostic.setloclist)

-- Use LspAttach autocommand to only map the following keys
-- after the language server attaches to the current buffer
vim.api.nvim_create_autocmd('LspAttach', {
  group = vim.api.nvim_create_augroup('UserLspConfig', {}),
  callback = function(ev)
    -- Enable completion triggered by <c-x><c-o>
    vim.lsp.handlers["textDocument/publishDiagnostics"] = vim.lsp.with(
      vim.lsp.diagnostic.on_publish_diagnostics, {
        underline = false,
        virtual_text = false,
      }
    )
    vim.bo[ev.buf].omnifunc = 'v:lua.vim.lsp.omnifunc'

    local opts = { buffer = ev.buf }
    vim.keymap.set('n', 'gD', vim.lsp.buf.declaration, opts)
    vim.keymap.set('n', 'gd', vim.lsp.buf.definition, opts)
    vim.keymap.set('n', 'K', vim.lsp.buf.hover, opts)
    vim.keymap.set('n', '<C-k>', vim.lsp.buf.signature_help, opts)
    vim.keymap.set('n', '<space>wl', function()
      print(vim.inspect(vim.lsp.buf.list_workspace_folders()))
    end, opts)
    vim.keymap.set({ 'n', 'v' }, '<space>ca', vim.lsp.buf.code_action, opts)
    vim.keymap.set('n', 'gr', require('telescope.builtin').lsp_references, opts)
    vim.keymap.set('n', '<leader>fd', require('telescope.builtin').diagnostics, opts)
  end,
})

