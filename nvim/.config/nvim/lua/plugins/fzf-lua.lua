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
				"<leader>ca",
				function()
					require("fzf-lua").lsp_code_actions()
				end,
				desc = "[c]ode [a]ctions",
			},
			{
				"<leader>ff",
				function()
					require("fzf-lua").files()
				end,
				desc = "[f]ind [f]iles in the current buffer",
			},
			{
				"<leader>df",
				function()
					require("fzf-lua").lsp_definitions()
				end,
				desc = "[g]o to [d]efinitions",
			},
			{
				"<leader>lr",
				function()
					require("fzf-lua").lsp_references()
				end,
				desc = "[l]ist [r]eferences",
			},
			{
				"<leader>fw",
				function()
					require("fzf-lua").grep_curbuf()
				end,
				desc = "[f]ind [w]ords in current buffer",
			},
			{
				"<leader>qf",
				function()
					require("fzf-lua").lgrep_quickfix()
				end,
				desc = "[q]uick [f]ix menu",
			},
		},
	},
}
