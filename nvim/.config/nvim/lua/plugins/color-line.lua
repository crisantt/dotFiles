return {
	{
		"folke/tokyonight.nvim",
		lazy = false,
		priority = 1000,
		config = function()
			vim.cmd([[colorscheme tokyonight-storm]])
		end,
	},
	{
		"nvim-lualine/lualine.nvim",
		config = function()
			require("lualine").setup({
				options = {
					theme = "auto",
					icons_enabled = true,
					section_separators = { left = "", right = "" },
					component_separators = "|",
				},
			})
		end,
		dependencies = { "nvim-tree/nvim-web-devicons" },
	},
}
