return {
    "ibhagwan/fzf-lua",
    -- optional for icon support
    dependencies = { "nvim-tree/nvim-web-devicons" },
    -- or if using mini.icons/mini.nvim
    -- dependencies = { "nvim-mini/mini.icons" },
    config = function()
        local fzf = require("fzf-lua")
        vim.keymap.set("n", "<leader>fg", fzf.live_grep, { desc = "FZF Grep" })
        vim.keymap.set("n", "<leader>ff", fzf.files, { desc = "FZF Files" })
        vim.keymap.set("n", "<leader><leader>", fzf.resume, { desc = "FZF Resume" })
        vim.keymap.set("n", "<leader>r", fzf.registers, { desc = "Registers" })
        vim.keymap.set("n", "<leader>m", fzf.marks, { desc = "Marks" })
        vim.keymap.set("n", "<leader>k", fzf.keymaps, { desc = "Keymaps" })
        vim.keymap.set("n", "<leader>b", fzf.buffers, { desc = "FZF Buffers" })
        vim.keymap.set("v", "<leader>8", fzf.grep_visual, { desc = "FZF Selection" })
        vim.keymap.set("n", "<leader>7", fzf.grep_cword, { desc = "FZF Word" })
        vim.keymap.set("n", "<leader>j", fzf.helptags, { desc = "Help Tags" })
        vim.keymap.set("n", "<leader>gc", fzf.git_bcommits, { desc = "Browse File Commits" })
        vim.keymap.set("n", "<leader>gs", fzf.git_status, { desc = "Git Status" })
        vim.keymap.set("n", "<leader>s", fzf.spell_suggest, { desc = "Spelling Suggestions" })
        -- ENABLE WHEN LSP IS AVAILABLE
        --	vim.keymap.set("n", "<leader>cj", require("fzf-lua").lsp_definitions, { desc = "Jump to Definition" })

        --	vim.keymap.set(
        --		"n",
        --		"<leader>cs",
        --		":lua require'fzf-lua'.lsp_document_symbols({winopts = {preview={wrap='wrap'}}})<cr>",
        --		{ desc = "Document Symbols" }
        --	)

        --	vim.keymap.set("n", "<leader>cr", require("fzf-lua").lsp_references, { desc = "LSP References" })

        --	vim.keymap.set(
        --		"n",
        --		"<leader>cd",
        --		":lua require'fzf-lua'.diagnostics_document({fzf_opts = { ['--wrap'] = true }})<cr>",
        --		{ desc = "Document Diagnostics" }
        --	)

        --	vim.keymap.set(
        --		"n",
        --		"<leader>ca",
        --		":lua require'fzf-lua'.lsp_code_actions({ winopts = {relative='cursor',row=1.01, col=0, height=0.2, width=0.4} })<cr>",
        --		{ desc = "Code Actions" }
        --	)
    end
}
