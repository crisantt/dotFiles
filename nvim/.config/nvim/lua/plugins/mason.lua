return {
	{ "mason-org/mason.nvim", opts = {} },
	{
		"WhoIsSethDaniel/mason-tool-installer.nvim",
		opts = {
			ensure_installed = {
				-- Go
				"gofumpt",
				"gomodifytags",
				"goimports-reviser",
				"goimports",
				-- Java
				"google-java-format",
				"checkstyle",
				-- Lua
				"stylua",
				"luacheck",

				-- bash
				"bash-language-server",
			},
		},
	},
}
