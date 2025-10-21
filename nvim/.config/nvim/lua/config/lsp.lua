local lsp = vim.lsp

lsp.enable({
	"lua_ls",
	"gopls",
	"jdtls",
	"hyprls",
	"bashls",
})

-- Config
vim.diagnostic.config({
	virtual_text = false,
	virtual_lines = true,
	underline = true,
	update_in_insert = true,
	float = {
		border = "rounded",
		source = true,
	},
	signs = {
		text = {
			[vim.diagnostic.severity.ERROR] = "󰅚 ",
			[vim.diagnostic.severity.WARN] = "󰀪 ",
			[vim.diagnostic.severity.INFO] = "󰋽 ",
			[vim.diagnostic.severity.HINT] = "󰌶 ",
		},
		numhl = {
			[vim.diagnostic.severity.ERROR] = "ErrorMsg",
			[vim.diagnostic.severity.WARN] = "WarningMsg",
		},
	},
})
