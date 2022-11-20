local colorscheme = "one_monokai"

local colors = require"one_monokai.colors"
require('one_monokai').setup({
  themes = function(colors)
    return {
      Normal = { bg = "#161819" },
      CursorLine = { bg = "#1d1f1f" },
      VertSplit = { fg = "#1d1f1f" },
      -- Git diff
      DiffChange = { fg = colors.yellow },
      diffChanged = { fg = colors.yellow },
      diffFile = { fg = colors.yellow }
    }
  end
})

local status_ok, _ = pcall(vim.cmd, "colorscheme " .. colorscheme)
if not status_ok then
	return
end
