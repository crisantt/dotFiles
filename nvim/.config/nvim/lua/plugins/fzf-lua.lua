return {
	{
		"ibhagwan/fzf-lua",
		lazy = false,
		dependencies = { "nvim-tree/nvim-web-devicons" },
		keys = {
			-- vim.keymap.set("n", "<leader>dd", require('fzf-lua').diagnostics_document, { desc = "Open Doagnotics Document" }),
			-- vim.keymap.set("n", "<leader>fg", require('fzf-lua').live_grep, { desc = "Search Files in Current Folder" }),
			-- vim.keymap.set("n", "<leader>fr", require('fzf-lua').lsp_references, { desc = "Open LSP References" }),
			{
				"<leader>fg",
				function()
					require("fzf-lua").live_grep()
				end,
				desc = "Fuzzy Find in current folder",
			},
			{
				"<leader>ff",
				function()
					require("fzf-lua").files()
				end,
				desc = "Search inside the current buffer/file",
			},
			{
				"<leader>df",
				function()
					require("fzf-lua").lsp_definitions()
				end,
				desc = "FZF Definitions",
			},
			{
				"<leader>fc",
				function()
					require("fzf-lua").grep_curbuf()
				end,
				desc = "FZF buffer/file",
			},
			{
				"<leader>fq",
				function()
					require("fzf-lua").lgrep_quickfix()
				end,
				desc = "Search inside the current buffer/file",
			},
		},
	},
}
