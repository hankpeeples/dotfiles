-- local colorscheme = "sonokai"
-- vim.g.sonokai_style = "andromeda"
-- vim.g.sonokai_better_performance = 1
-- vim.g.sonokai_enable_italic = 1
-- vim.g.sonokai_cursor = "green"
-- vim.g.sonokai_transparent_background = 1
-- vim.g.sonokai_spell_foreground = "colored"
-- vim.g.sonokai_diagnostic_virtual_text = "colored"
-- vim.g.sonokai_disable_terminal_colors = 1

local colorscheme = "kanagawa"
require("kanagawa").setup({
	undercurl = true, -- enable undercurls
	commentStyle = { italic = true },
	functionStyle = { bold = true },
	keywordStyle = { italic = true },
	statementStyle = { bold = true },
	typeStyle = {},
	variablebuiltinStyle = { italic = true },
	specialReturn = true, -- special highlight for the return keyword
	specialException = true, -- special highlight for exception handling keywords
	transparent = false, -- do not set background color
	dimInactive = false, -- dim inactive window `:h hl-NormalNC`
	globalStatus = false, -- adjust window separators highlight for laststatus=3
	terminalColors = true, -- define vim.g.terminal_color_{0,17}
	colors = {},
	overrides = {},
	theme = "default", -- Load "default" theme or the experimental "light" theme
})

-- local colorscheme = "gruvbox-material"
-- vim.g.gruvbox_material_background = "medium"
-- vim.g.gruvbox_material_better_performance = 1
-- vim.g.gruvbox_material_enable_bold = 1
-- vim.g.gruvbox_material_enable_italic = 1
-- vim.g.gruvbox_material_transparent_background = 2 -- 0, 1, 2
-- vim.g.gruvbox_material_dim_inactive_windows = 0
-- vim.g.gruvbox_material_menu_selection_background = "orange"
-- vim.g.gruvbox_material_sign_column_background = "none" -- or 'grey'
-- vim.g.gruvbox_material_diagnostic_virtual_text = "colored"
-- vim.g.gruvbox_material_current_word = "bold"

local status_ok, _ = pcall(vim.cmd, "colorscheme " .. colorscheme)
if not status_ok then
	return
end
