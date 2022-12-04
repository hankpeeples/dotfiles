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

local colorscheme = "one_monokai"
local colors = require("one_monokai.colors")
require("one_monokai").setup({
	colors = {
		bg = "#161819",
	},
	themes = function(colors)
		return {
			Normal = { bg = colors.bg },
			CursorLine = { bg = "#1d1f1f" },
			VertSplit = { fg = "#1d1f1f" },
			-- Git diff
			DiffChange = { fg = colors.yellow },
			diffChanged = { fg = colors.yellow },
			diffFile = { fg = colors.yellow },
			-- LSP Float
			LspInfoBorder = { bg = colors.white, fg = colors.white },
		}
	end,
})

-- local colorscheme = "nightfox"
-- require("nightfox").setup({
-- 	options = {
-- 		-- Compiled file's destination location
-- 		compile_path = vim.fn.stdpath("cache") .. "/nightfox",
-- 		compile_file_suffix = "_compiled", -- Compiled file suffix
-- 		transparent = false, -- Disable setting background
-- 		terminal_colors = true, -- Set terminal colors (vim.g.terminal_color_*) used in `:terminal`
-- 		dim_inactive = true, -- Non focused panes set to alternative background
-- 		module_default = true, -- Default enable value for modules
-- 		styles = { -- Style to be applied to different syntax groups
-- 			comments = "italic", -- Value is any valid attr-list value `:help attr-list`
-- 			conditionals = "NONE",
-- 			constants = "italic",
-- 			functions = "bold",
-- 			keywords = "NONE",
-- 			numbers = "NONE",
-- 			operators = "bold",
-- 			strings = "NONE",
-- 			types = "NONE",
-- 			variables = "NONE",
-- 		},
-- 		inverse = { -- Inverse highlight for different types
-- 			match_paren = false,
-- 			visual = false,
-- 			search = false,
-- 		},
-- 		modules = { -- List of various plugins and additional options
-- 			-- ...
-- 		},
-- 	},
-- 	themes = function(colors)
-- 		return {
-- 			Normal = { bg = colors.bg },
-- 			-- CursorLine = { bg = "#1a2029" },
-- 			-- VertSplit = { fg = "#888888" },
-- 			-- Git diff
-- 			DiffChange = { fg = colors.yellow },
-- 			diffChanged = { fg = colors.yellow },
-- 			diffFile = { fg = colors.yellow },
-- 			-- LSP Float
-- 			LspInfoBorder = { bg = colors.white, fg = colors.white },
-- 		}
-- 	end,
-- })

-- local colorscheme = "nightfox"
-- require("nightfox").setup({
-- 	options = {
-- 		-- Compiled file's destination location
-- 		compile_path = vim.fn.stdpath("cache") .. "/nightfox",
-- 		compile_file_suffix = "_compiled", -- Compiled file suffix
-- 		transparent = false, -- Disable setting background
-- 		terminal_colors = true, -- Set terminal colors (vim.g.terminal_color_*) used in `:terminal`
-- 		dim_inactive = true, -- Non focused panes set to alternative background
-- 		module_default = true, -- Default enable value for modules
-- 		styles = { -- Style to be applied to different syntax groups
-- 			comments = "italic", -- Value is any valid attr-list value `:help attr-list`
-- 			conditionals = "NONE",
-- 			constants = "italic",
-- 			functions = "bold",
-- 			keywords = "NONE",
-- 			numbers = "NONE",
-- 			operators = "bold",
-- 			strings = "NONE",
-- 			types = "NONE",
-- 			variables = "NONE",
-- 		},
-- 		inverse = { -- Inverse highlight for different types
-- 			match_paren = false,
-- 			visual = false,
-- 			search = false,
-- 		},
-- 		modules = { -- List of various plugins and additional options
-- 			-- ...
-- 		},
-- 	},
-- 	palettes = {},
-- 	specs = {},
-- 	groups = {},
-- })

-- local colorscheme = "arctic"
-- local colorscheme = "zephyr"

-- local colorscheme = "oceanicnext"
-- vim.g.oceanic_next_terminal_bold = 1
-- vim.g.oceanic_next_terminal_italic = 1

-- local colorscheme = "onedarkpro"
-- require("onedarkpro").setup({
-- 	dark_theme = "onedark_vivid",
-- 	caching = false, -- Use caching for the theme?
-- 	cache_path = vim.fn.expand(vim.fn.stdpath("cache") .. "/onedarkpro/"), -- The path to the cache directory
-- 	colors = {}, -- Override default colors by specifying colors for 'onelight' or 'onedark' themes
-- 	highlights = {}, -- Override default highlight and/or filetype groups
-- 	filetypes = { -- Override which filetype highlight groups are loaded
-- 		javascript = true,
-- 		lua = true,
-- 		markdown = true,
-- 		php = true,
-- 		python = true,
-- 		ruby = true,
-- 		rust = true,
-- 		toml = true,
-- 		typescript = true,
-- 		typescriptreact = true,
-- 		vue = true,
-- 		yaml = true,
-- 	},
-- 	plugins = { -- Override which plugin highlight groups are loaded
-- 		-- See the Supported Plugins section for a list of available plugins
-- 	},
-- 	styles = { -- Choose from "bold,italic,underline"
-- 		types = "italic", -- Style that is applied to types
-- 		numbers = "NONE", -- Style that is applied to numbers
-- 		strings = "NONE", -- Style that is applied to strings
-- 		comments = "italic", -- Style that is applied to comments
-- 		keywords = "NONE", -- Style that is applied to keywords
-- 		constants = "bold", -- Style that is applied to constants
-- 		functions = "bold", -- Style that is applied to functions
-- 		operators = "bold", -- Style that is applied to operators
-- 		variables = "NONE", -- Style that is applied to variables
-- 		conditionals = "NONE", -- Style that is applied to conditionals
-- 		virtual_text = "NONE", -- Style that is applied to virtual text
-- 	},
-- 	options = {
-- 		bold = true, -- Use bold styles?
-- 		italic = true, -- Use italic styles?
-- 		underline = true, -- Use underline styles?
-- 		undercurl = true, -- Use undercurl styles?
--
-- 		cursorline = true, -- Use cursorline highlighting?
-- 		transparency = false, -- Use a transparent background?
-- 		terminal_colors = false, -- Use the theme's colors for Neovim's :terminal?
-- 		window_unfocused_color = false, -- When the window is out of focus, change the normal background?
-- 	},
-- })

local status_ok, _ = pcall(vim.cmd, "colorscheme " .. colorscheme)
if not status_ok then
	return
end
