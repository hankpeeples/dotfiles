-- local colorscheme = "one_monokai"
-- local colors = require("one_monokai.colors")
-- require("one_monokai").setup({
-- 	colors = {
-- 		bg = "#161819",
-- 	},
-- 	themes = function(colors)
-- 		return {
-- 			-- Normal = { bg = colors.bg },
-- 			-- CursorLine = { bg = "#1d1f1f" },
-- 			-- VertSplit = { fg = "#1d1f1f" },
-- 			-- Git diff
-- 			DiffChange = { fg = colors.yellow },
-- 			diffChanged = { fg = colors.yellow },
-- 			diffFile = { fg = colors.yellow },
-- 			-- LSP Float
-- 			LspInfoBorder = { bg = colors.white, fg = colors.white },
-- 		}
-- 	end,
-- })

-- local colorscheme = "onedark"
-- require("onedark").setup({
-- 	-- Main options --
-- 	style = "deep", -- Default theme style. Choose between 'dark', 'darker', 'cool', 'deep', 'warm', 'warmer' and 'light'
-- 	transparent = true, -- Show/hide background
-- 	term_colors = true, -- Change terminal color as per the selected theme style
-- 	ending_tildes = true, -- Show the end-of-buffer tildes. By default they are hidden
-- 	cmp_itemkind_reverse = false, -- reverse item kind highlights in cmp menu
--
-- 	-- toggle theme style ---
-- 	toggle_style_key = nil, -- keybind to toggle theme style. Leave it nil to disable it, or set it to a string, for example "<leader>ts"
-- 	toggle_style_list = { "dark", "darker", "cool", "deep", "warm", "warmer", "light" }, -- List of styles to toggle between
--
-- 	-- Change code style ---
-- 	-- Options are italic, bold, underline, none
-- 	-- You can configure multiple style with comma seperated, For e.g., keywords = 'italic,bold'
-- 	code_style = {
-- 		comments = "italic",
-- 		keywords = "none",
-- 		functions = "bold",
-- 		strings = "none",
-- 		variables = "italic",
-- 	},
--
-- 	-- Lualine options --
-- 	lualine = {
-- 		transparent = false, -- lualine center bar transparency
-- 	},
--
-- 	-- Custom Highlights --
-- 	colors = {}, -- Override default colors
-- 	highlights = {}, -- Override highlight groups
--
-- 	-- Plugins Config --
-- 	diagnostics = {
-- 		darker = true, -- darker colors for diagnostic
-- 		undercurl = true, -- use undercurl instead of underline for diagnostics
-- 		background = true, -- use background color for virtual text
-- 	},
-- })

local colorscheme = "sonokai"
vim.g.sonokai_style = "andromeda"
vim.g.sonokai_better_performance = 1
vim.g.sonokai_enable_italic = 1
vim.g.sonokai_cursor = "green"
vim.g.sonokai_transparent_background = 1
vim.g.sonokai_spell_foreground = "colored"
vim.g.sonokai_diagnostic_virtual_text = "colored"
vim.g.sonokai_disable_terminal_colors = 1

local status_ok, _ = pcall(vim.cmd, "colorscheme " .. colorscheme)
if not status_ok then
	return
end
