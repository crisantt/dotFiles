return {
{
   "WhoIsSethDaniel/mason-tool-installer.nvim",
   dependencies = {
      "mason-org/mason.nvim",
      opts = {
         ui = {
            icons = {
               package_installed = "✓",
               package_pending = "➜",
               package_uninstalled = "✗"
            }
         }
      }
   },
   opts ={
      ensure_installed = {
         -- Language servers
         "lua-language-server",
         "zls",
         "bash-language-server",
         "jdtls",
         -- Formatters
         "stylua",
         "google-java-format",
      },
   },
},
{
   "neovim/nvim-lspconfig",
},
{
   "mason-org/mason-lspconfig.nvim",
   opts = {
      automatic_enable = { "lua_ls", "zls", "bashls", "jdtls" },
   },
   dependencies = {
      { "neovim/nvim-lspconfig", },
      { "mason-org/mason.nvim", opts = {} },
   },
}
}
