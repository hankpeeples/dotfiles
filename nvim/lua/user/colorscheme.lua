local colorscheme = "sonokai"
vim.g.sonokai_style = "andromeda"
vim.g.sonokai_better_performance = 1
vim.g.sonokai_enable_italic = 1
vim.g.sonokai_cursor = "green"
vim.g.sonokai_transparent_background = 0
vim.g.sonokai_spell_foreground = "colored"
vim.g.sonokai_diagnostic_virtual_text = "colored"
vim.g.sonokai_disable_terminal_colors = 1

-- local colorscheme = "juliana"

-- local colorscheme = "kanagawa"
-- require("kanagawa").setup({
-- 	undercurl = true, -- enable undercurls
-- 	commentStyle = { italic = true },
-- 	functionStyle = { bold = true },
-- 	keywordStyle = { italic = true },
-- 	statementStyle = { bold = true },
-- 	typeStyle = {},
-- 	variablebuiltinStyle = { italic = true },
-- 	specialReturn = true, -- special highlight for the return keyword
-- 	specialException = true, -- special highlight for exception handling keywords
-- 	transparent = false, -- do not set background color
-- 	dimInactive = false, -- dim inactive window `:h hl-NormalNC`
-- 	globalStatus = true, -- adjust window separators highlight for laststatus=3
-- 	terminalColors = true, -- define vim.g.terminal_color_{0,17}
-- 	colors = {},
-- 	overrides = {},
-- 	theme = "default", -- Load "default" theme or the experimental "light" theme
-- })

-- local colorscheme = "onedark"
-- require("onedarkpro").setup({
-- 	-- colors = {
-- 	-- 	light_purple = "require('onedarkpro.helpers').lighten('purple', 9, 'onedark')",
-- 	-- },
-- 	-- highlights = {
-- 	-- 	Label = { fg = "${light_purple}" },
-- 	-- 	Repeat = { fg = "${light_purple}" },
-- 	-- },
-- 	-- semantic_tokens = {
-- 	-- 	default = {
-- 	-- 		["@field"] = { fg = "${orange}" },
-- 	-- 		["@variable"] = { fg = "#ffffff" },
-- 	-- 	},
-- 	-- },
-- 	styles = {
-- 		types = "NONE",
-- 		methods = "bold",
-- 		numbers = "NONE",
-- 		strings = "NONE",
-- 		comments = "italic",
-- 		keywords = "bold,italic",
-- 		constants = "NONE",
-- 		functions = "bold,italic",
-- 		operators = "NONE",
-- 		variables = "NONE",
-- 		parameters = "NONE",
-- 		conditionals = "italic",
-- 		virtual_text = "NONE",
-- 	},
-- 	options = {
-- 		cursorline = true,
-- 		transparency = false,
-- 		terminal_colors = true,
-- 		highlight_inactive_windows = false,
-- 	},
-- })

local status_ok, _ = pcall(vim.cmd, "colorscheme " .. colorscheme)
if not status_ok then
	return
end
