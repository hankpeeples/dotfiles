local status_ok, bufferline = pcall(require, "bufferline")
if not status_ok then
	return
end

bufferline.setup({
	options = {
		close_command = "Bdelete! %d", -- can be a string | function, see "Mouse actions"
		right_mouse_command = "Bdelete! %d", -- can be a string | function, see "Mouse actions"
		offsets = { { filetype = "NvimTree", text = "File Explorer", padding = 1 } },
		separator_style = "slant", -- | "thick" | "thin" | "slant" | "padded_slant"
		-- indicator = {
		-- 	style = "underline",
		-- },
		hover = {
			enabled = true,
			delay = 50,
			reveal = { "close" },
		},
		groups = {
			options = {
				toggle_hidden_on_enter = true, -- when you re-enter a hidden group this options re-opens that group so the buffer is visible
			},
			items = {
				{
					name = "Tests", -- Mandatory
					highlight = { underline = true, sp = "blue" }, -- Optional
					priority = 4, -- determines where it will appear relative to other groups (Optional)
					icon = "", -- Optional
					matcher = function(buf) -- Mandatory
						return buf.filename:match("%_test.%")
					end,
				},
				{
					name = "CSS",
					priority = 3, -- determines where it will appear relative to other groups (Optional)
					matcher = function(buf) -- Mandatory
						return buf.filename:match("%.css")
					end,
				},
				{
					name = "GO",
					priority = 1, -- determines where it will appear relative to other groups (Optional)
					matcher = function(buf) -- Mandatory
						return buf.filename:match("%.go")
					end,
				},
				{
					name = "TSX",
					priority = 2, -- determines where it will appear relative to other groups (Optional)
					matcher = function(buf) -- Mandatory
						return buf.filename:match("%.tsx")
					end,
				},
				{
					name = "Docs",
					highlight = { underline = true, sp = "#2eda2e" },
					priority = 5,
					auto_close = true, -- whether or not close this group if it doesn't contain the current buffer
					matcher = function(buf)
						return buf.filename:match("%.md") or buf.filename:match("%.txt")
					end,
				},
			},
		},
	},
	highlights = {
		-- indicator_selected = { fg = "#ffb229", bg = "#ffb229" },
	},
})
