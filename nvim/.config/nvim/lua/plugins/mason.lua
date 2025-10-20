return{
   {
      'mason-org/mason.nvim',
      dependencies = {
         'WhoIsSethDaniel/mason-tool-installer.nvim',
         opts = {
            ensure_installed = {
               -- Go
               'gofmt',
               'golangci-lint',
               -- Java
               'google-java-format',
               'checkstyle',
               -- Lua
               'stylua',
               'luacheck',
            },
         }
      },
      cmd = 'Mason',
      opts = {},
   }
}
