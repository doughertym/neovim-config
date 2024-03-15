return {
	"nvimtools/none-ls.nvim",
	config = function()
		local null_ls = require("null-ls")
		null_ls.setup({
			sources = {
				null_ls.builtins.completion.spell,

				null_ls.builtins.diagnostics.rubocop,
        -- This is broken, see https://stackoverflow.com/a/78110829 for possible fixes
				-- null_ls.builtins.diagnostics.eslint_d,

				null_ls.builtins.formatting.stylua,
				null_ls.builtins.formatting.rubocop,
				null_ls.builtins.formatting.prettier,
			},
		})

		vim.keymap.set("n", "<leader>gf", vim.lsp.buf.format, {})
	end,
}
