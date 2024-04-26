return {
	"nvimtools/none-ls.nvim",
	config = function()
		local null_ls = require("null-ls")

		null_ls.setup({
			sources = {
				null_ls.builtins.formatting.stylua,
				null_ls.builtins.formatting.rustfmt,
			},
		})

		local augroup = vim.api.nvim_create_augroup("LspFormatting", {})
		vim.api.nvim_clear_autocmds({ group = augroup })
		vim.api.nvim_create_autocmd("BufWritePost", {
			group = augroup,
			callback = function()
				vim.lsp.buf.format({ async = false })
			end,
		})
	end,
}
