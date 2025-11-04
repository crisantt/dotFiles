return {
	{
		"stevearc/conform.nvim",
		opts = {
			formatters_by_ft = {
				lua = { "stylua" },
				zig = { "zigfmt", "ziggy", "ziggy_schema" },
			},
		},
	},
}
