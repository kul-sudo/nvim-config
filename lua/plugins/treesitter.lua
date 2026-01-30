return {
	"nvim-treesitter/nvim-treesitter",
	branch = "main",
	version = false,
	build = ":TSUpdate",
	event = { "BufReadPost", "BufNewFile" },
	opts = {
		ensure_installed = { "rust", "lua" },
		highlight = { enable = true },
		indent = { enable = true },
	},
	config = function(_, opts)
		local config = require("nvim-treesitter")

		config.setup(opts)

		vim.api.nvim_create_autocmd("FileType", {
			callback = function()
				pcall(vim.treesitter.start)
			end,
		})
	end,
}
