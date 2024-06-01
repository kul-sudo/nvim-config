return {
	"nvim-telescope/telescope-file-browser.nvim",
	dependencies = { "nvim-telescope/telescope.nvim", "nvim-lua/plenary.nvim" },
	config = function()
		local builtin = require("telescope.builtin")
		vim.keymap.set("n", "sf", function()
			require("telescope").extensions.file_browser.file_browser({
				path = "%:p:h",
			})
		end)
		vim.keymap.set("n", ";r", builtin.live_grep)
	end,
}
