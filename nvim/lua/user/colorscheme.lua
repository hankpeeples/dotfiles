-- local colorscheme = "gruvbox-material"
-- vim.g.gruvbox_material_background = "soft" -- Hard, medium, soft
-- vim.g.gruvbox_material_foreground = "original" -- Mix, material, original
-- vim.g.gruvbox_material_better_performance = 1
-- vim.g.gruvbox_material_enable_bold = 1
-- vim.g.gruvbox_material_enable_italic = 1
-- vim.g.gruvbox_material_transparent_background = 0
-- vim.g.gruvbox_material_diagnostic_text_highlight = 1
-- vim.g.gruvbox_material_diagnostic_line_highlight = 1
-- vim.cmd("set background=dark")

-- local colorscheme = "one_monokai"
-- local colors = require("one_monokai.colors")
-- require("one_monokai").setup({
-- 	colors = {
-- 		bg = "#161819",
-- 	},
-- 	themes = function(colors)
-- 		return {
-- 			Normal = { bg = colors.bg },
-- 			CursorLine = { bg = "#1d1f1f" },
-- 			VertSplit = { fg = "#1d1f1f" },
-- 			-- Git diff
-- 			DiffChange = { fg = colors.yellow },
-- 			diffChanged = { fg = colors.yellow },
-- 			diffFile = { fg = colors.yellow },
-- 			-- LSP Float
-- 			LspInfoBorder = { bg = colors.white, fg = colors.white },
-- 		}
-- 	end,
-- })

local colorscheme = "nightfox"
require("nightfox").setup({
	options = {
		-- Compiled file's destination location
		compile_path = vim.fn.stdpath("cache") .. "/nightfox",
		compile_file_suffix = "_compiled", -- Compiled file suffix
		transparent = false, -- Disable setting background
		terminal_colors = true, -- Set terminal colors (vim.g.terminal_color_*) used in `:terminal`
		dim_inactive = true, -- Non focused panes set to alternative background
		module_default = true, -- Default enable value for modules
		styles = { -- Style to be applied to different syntax groups
			comments = "italic", -- Value is any valid attr-list value `:help attr-list`
			conditionals = "NONE",
			constants = "italic",
			functions = "bold",
			keywords = "NONE",
			numbers = "NONE",
			operators = "bold",
			strings = "NONE",
			types = "NONE",
			variables = "NONE",
		},
		inverse = { -- Inverse highlight for different types
			match_paren = false,
			visual = false,
			search = false,
		},
		modules = { -- List of various plugins and additional options
			-- ...
		},
	},
	palettes = {},
	specs = {},
	groups = {},
})

-- local colorscheme = "arctic"

-- local colorscheme = "oceanicnext"
-- vim.g.oceanic_next_terminal_bold = 1
-- vim.g.oceanic_next_terminal_italic = 1

local status_ok, _ = pcall(vim.cmd, "colorscheme " .. colorscheme)
if not status_ok then
	return
end
