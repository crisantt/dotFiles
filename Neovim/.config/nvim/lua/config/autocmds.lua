-- Highlight Yanks
vim.api.nvim_create_autocmd('TextYankPost', {
    desc = 'Highlight when yanking (copying) text',
    group = vim.api.nvim_create_augroup('kickstart-highlight-yank', { clear = true }),
    callback = function()
        vim.hl.on_yank()
    end,
})

-- Restore last cursor position when reopening a file
local last_cursor_group = vim.api.nvim_create_augroup("LastCursorGroup", {})
vim.api.nvim_create_autocmd("BufReadPost", {
    group = last_cursor_group,
    callback = function()
        local mark = vim.api.nvim_buf_get_mark(0, '"')
        local lcount = vim.api.nvim_buf_line_count(0)
        if mark[1] > 0 and mark[1] <= lcount then
            pcall(vim.api.nvim_win_set_cursor, 0, mark)
        end
    end,
})

-- vim.api.nvim_create_autocmd('LspAttach', {
--    group = vim.api.nvim_create_augroup('my.lsp', {}),
--    callback = function(args)
--        local client = assert(vim.lsp.get_client_by_id(args.data.client_id))
--        if client:supports_method('textDocument/implementation') then
--            -- Create a keymap for vim.lsp.buf.implementation ...
--        end
--        -- Enable auto-completion. Note: Use CTRL-Y to select an item. |complete_CTRL-Y|
--        if client:supports_method('textDocument/completion') then
--            -- Optional: trigger autocompletion on EVERY keypress. May be slow!
--            -- local chars = {}; for i = 32, 126 do table.insert(chars, string.char(i)) end
--            -- client.server_capabilities.completionProvider.triggerCharacters = chars
--            vim.lsp.completion.enable(true, client.id, args.buf, { autotrigger = true })
--        end
--        -- Auto-format ("lint") on save.
--        -- Usually not needed if server supports "textDocument/willSaveWaitUntil".
--        if not client:supports_method('textDocument/willSaveWaitUntil')
--            and client:supports_method('textDocument/formatting') then
--            vim.api.nvim_create_autocmd('BufWritePre', {
--                group = vim.api.nvim_create_augroup('my.lsp', { clear = false }),
--                buffer = args.buf,
--                callback = function()
--                    vim.lsp.buf.format({ bufnr = args.buf, id = client.id, timeout_ms = 1000 })
--                end,
--            })
--        end
--    end,
-- })
