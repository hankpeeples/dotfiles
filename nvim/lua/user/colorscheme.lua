local colorscheme = "one_monokai"

local colors = require"one_monokai.colors"
require('one_monokai').setup({
  colors = {
    bg = "#161819"
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
      LspInfoBorder = { bg = colors.white, fg = colors.white }
    }
  end
})

local status_ok, _ = pcall(vim.cmd, "colorscheme " .. colorscheme)
if not status_ok then
	return
end
