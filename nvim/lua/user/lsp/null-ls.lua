local null_ls_status_ok, null_ls = pcall(require, "null-ls")
if not null_ls_status_ok then
	return
end

-- https://github.com/jose-elias-alvarez/null-ls.nvim/tree/main/lua/null-ls/builtins/formatting
local formatting = null_ls.builtins.formatting
-- https://github.com/jose-elias-alvarez/null-ls.nvim/tree/main/lua/null-ls/builtins/diagnostics
local diagnostics = null_ls.builtins.diagnostics

-- https://github.com/prettier-solidity/prettier-plugin-solidity
null_ls.setup({
	debug = false,
	sources = {
		formatting.black.with({ extra_args = { "--fast" } }),
		formatting.stylua,
		diagnostics.semgrep.with({ extra_args = { "--config", "auto" } }), -- ts, tsx, go, and py static analysis
		diagnostics.revive.with({ -- Golang linter
			args = {
				"-config",
				"/Users/hankpeeples/.config/revive/config.toml",
				"-formatter",
				"json",
			},
		}),
		-- diagnostics.revive,
		diagnostics.write_good,
		formatting.stylelint,
		diagnostics.jsonlint, -- JSON
		formatting.uncrustify, -- Java, C++, C, C#
	},
})
