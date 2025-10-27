return {
   "ibhagwan/fzf-lua",
   dependencies = { "nvim-tree/nvim-web-devicons" },
   cmd = "FzfLua",
   opts = {
   },
   keys = {
      { "<leader>sf",
      function()
         require("fzf-lua").files()
      end,
      desc = "Fuzzy Find Files in project",
   },
   { "<leader>ca",
   function()
      require("fzf-lua").lsp_code_actions()
   end,
   desc = "Code Actions",
},

{ "<leader>gd",
function()
   require("fzf-lua").lsp_definitions()
end,
desc = "Go to definition",
   },
}
}
