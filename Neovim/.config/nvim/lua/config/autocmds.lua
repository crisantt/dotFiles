-- Highlight Yanks
vim.api.nvim_create_autocmd('TextYankPost', {
    desc = 'Highlight when yanking (copying) text',
    group = vim.api.nvim_create_augroup('kickstart-highlight-yank', { clear = true }),
    callback = function()
        vim.hl.on_yank()
    end,
})

-- Run FzfLua register_ui_select when Neovim starts
vim.api.nvim_create_autocmd("VimEnter", {
   callback = function()
       vim.cmd("FzfLua register_ui_select")
   end,
})
