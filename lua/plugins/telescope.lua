return {
	"nvim-telescope/telescope-file-browser.nvim",
	dependencies = { "nvim-telescope/telescope.nvim", "nvim-lua/plenary.nvim" },
	keys = {
		{
			"sf",
			function()
				require("telescope").extensions.file_browser.file_browser({ path = "%:p:h" })
			end,
		},
		{
			";r",
			function()
				require("telescope.builtin").live_grep()
			end,
		},
	},
}
