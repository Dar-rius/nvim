return {
	"catppuccin/nvim",
	name = "catppuccin",
	priority = 1000,
	require("catppuccin").setup({
		integrations = {
			ts_rainbow = true,
		},
		color_overrides = {
			mocha = {
				base = "#000000",
				mantle = "#000000",
				crust = "#000000",
			},
		},
	}),
}
