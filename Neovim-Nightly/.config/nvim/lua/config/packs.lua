vim.pack.add {
    { src = 'https://github.com/folke/tokyonight.nvim.git' },
    { src = 'https://github.com/nvim-lualine/lualine.nvim.git' },
    { src = 'https://github.com/ibhagwan/fzf-lua.git' },
    { src = 'https://github.com/nvim-tree/nvim-web-devicons.git' },
}

vim.cmd [[colorscheme tokyonight]]

require('lualine').setup({
    options = {
        icon_enabled = false,
        theme = 'auto',
    }
})

require('fzf-lua').setup({
    vim.keymap.set("n", "<leader>dd", require('fzf-lua').diagnostics_document, { desc = "Open Doagnotics Document" }),
    vim.keymap.set("n", "<leader>fg", require('fzf-lua').live_grep, { desc = "Search Files in Current Folder" }),
    vim.keymap.set("n", "<leader>fr", require('fzf-lua').lsp_references, { desc = "Open LSP References" }),
})
