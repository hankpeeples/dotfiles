-- local colorscheme = "sonokai"
-- vim.g.sonokai_style = "andromeda"
-- vim.g.sonokai_better_performance = 1
-- vim.g.sonokai_enable_italic = 1
-- vim.g.sonokai_cursor = "green"
-- vim.g.sonokai_transparent_background = 0
-- vim.g.sonokai_spell_foreground = "colored"
-- vim.g.sonokai_diagnostic_virtual_text = "colored"
-- vim.g.sonokai_disable_terminal_colors = 1

-- local colorscheme = 'midnight'
-- require('midnight').setup({
--   HighlightGroup = {
--     bg = 'DarkGrey',
--     clear = true,
--   },
-- })

local colorscheme = "gruvbox-material"
-- vim.g.gruvbox_material_background = "hard"
vim.g.gruvbox_material_better_performance = 1
vim.g.gruvbox_material_foreground = "mixed"

-- local colorscheme = "catppuccin"
-- require("catppuccin").setup({
--   flavour = "mocha", -- latte, frappe, macchiato, mocha
--   background = {
--     -- :h background
--     dark = "mocha",
--   },
--   transparent_background = false,
--   show_end_of_buffer = false, -- show the '~' characters after the end of buffers
--   term_colors = true,
--   dim_inactive = {
--     enabled = false,
--     shade = "dark",
--     percentage = 0.15,
--   },
--   no_italic = false, -- Force no italic
--   no_bold = false,   -- Force no bold
--   styles = {
--     comments = { "italic" },
--     conditionals = { "italic" },
--     loops = {},
--     functions = { "bold" },
--     keywords = {},
--     strings = { "bold" },
--     variables = {},
--     numbers = {},
--     booleans = { "italic" },
--     properties = {},
--     types = { "bold" },
--     operators = {},
--   },
--   color_overrides = {},
--   custom_highlights = {},
--   integrations = {
--     cmp = true,
--     gitsigns = true,
--     nvimtree = true,
--     telescope = true,
--     notify = true,
--     noice = true,
--     mini = false,
--     bufferline = true,
--     fidget = true,
--     which_key = true,
--     treesitter = true,
--     treesitter_context = true,
--     ts_rainbow = true,
--     ts_rainbow2 = true,
--     indent_blankline = {
--       enabled = true,
--       colored_indent_levels = false,
--     },
--     -- For more plugins integrations please scroll down (https://github.com/catppuccin/nvim#integrations)
--   },
-- })

local status_ok, _ = pcall(vim.cmd, "colorscheme " .. colorscheme)
if not status_ok then
	return
end
