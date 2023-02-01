-- local colorscheme = "sonokai"
-- vim.g.sonokai_style = "andromeda"
-- vim.g.sonokai_better_performance = 1
-- vim.g.sonokai_enable_italic = 1
-- vim.g.sonokai_cursor = "green"
-- vim.g.sonokai_transparent_background = 1
-- vim.g.sonokai_spell_foreground = "colored"
-- vim.g.sonokai_diagnostic_virtual_text = "colored"
-- vim.g.sonokai_disable_terminal_colors = 1

local colorscheme = "nightfox" -- or duskfox, nordfox, terafox, carbonfox
require("nightfox").setup({
	options = {
		-- Compiled file's destination location
		compile_path = vim.fn.stdpath("cache") .. "/nightfox",
		compile_file_suffix = "_compiled", -- Compiled file suffix
		transparent = false, -- Disable setting background
		terminal_colors = true, -- Set terminal colors (vim.g.terminal_color_*) used in `:terminal`
		dim_inactive = false, -- Non focused panes set to alternative background
		module_default = true, -- Default enable value for modules
		colorblind = {
			enable = false, -- Enable colorblind support
			simulate_only = false, -- Only show simulated colorblind colors and not diff shifted
			severity = {
				protan = 0, -- Severity [0,1] for protan (red)
				deutan = 0, -- Severity [0,1] for deutan (green)
				tritan = 0, -- Severity [0,1] for tritan (blue)
			},
		},
		styles = { -- Style to be applied to different syntax groups
			comments = "italic", -- Value is any valid attr-list value `:help attr-list`
			conditionals = "NONE",
			constants = "NONE",
			functions = "bold",
			keywords = "NONE",
			numbers = "NONE",
			operators = "bold",
			strings = "NONE",
			types = "italic",
			variables = "NONE",
		},
		inverse = { -- Inverse highlight for different types
			match_paren = true,
			visual = true,
			search = true,
		},
		modules = { -- List of various plugins and additional options
		},
	},
	palettes = {},
	specs = {},
	groups = {},
})

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
-- 	globalStatus = false, -- adjust window separators highlight for laststatus=3
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
-- 		terminal_colors = false,
-- 		highlight_inactive_windows = false,
-- 	},
-- })

local status_ok, _ = pcall(vim.cmd, "colorscheme " .. colorscheme)
if not status_ok then
	return
end
