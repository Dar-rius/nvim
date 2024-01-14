return {
	"nvimdev/dashboard-nvim",
	event = "VimEnter",
	config = function()
		require("dashboard").setup({
			config = {
                 week_header = {
    enable = true,  --boolean use a week header
  },
				project = {
					enable = true,
					limit = 4,
					icon = "  ",
					label = "Recent projects:",
					action = "Neotree toggle position=float dir=",
				},
			},
		})
	end,
	dependencies = {
		{ "nvim-tree/nvim-web-devicons" },
	},
}
