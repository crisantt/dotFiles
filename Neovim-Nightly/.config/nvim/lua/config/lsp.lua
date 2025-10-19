local lsp = vim.lsp

lsp.enable({
    'lua_ls',
    'gopls'
})

vim.pack.add{
  { src = 'https://github.com/mason-org/mason.nvim' },
}

require "mason".setup()
