vim.api.nvim_create_autocmd({ "FileType" }, {
	pattern = { "qf", "help", "man", "lspinfo", "spectre_panel" },
	callback = function()
		vim.cmd([[
      nnoremap <silent> <buffer> q :close<CR>
      set nobuflisted
    ]])
	end,
})

vim.api.nvim_create_autocmd({ "FileType" }, {
	pattern = { "gitcommit" },
	callback = function()
		vim.opt_local.wrap = true
		vim.opt_local.spell = true
	end,
})

vim.api.nvim_create_autocmd({ "FileType" }, {
	pattern = { "markdown" },
	callback = function()
		vim.opt_local.wrap = true
		vim.opt_local.spell = true
	end,
})

local function open_neo_tree(data)
	-- buffer is a directory
	local directory = vim.fn.isdirectory(data.file) == 1

	if not directory then
		return
	end

	-- create a new, empty buffer
	vim.cmd.enew()
	-- wipe the directory buffer
	vim.cmd.bw(data.buf)
	-- change to the directory
	vim.cmd.cd(data.file)
	-- open the tree
	vim.cmd("NvimTreeOpen")
end

vim.api.nvim_create_autocmd({ "VimEnter " }, {
	callback = open_neo_tree,
})

-- Honestly, no clue what this does
vim.cmd("autocmd BufEnter * ++nested if winnr('$') == 1 && bufname() == 'NvimTree_1' . tabpagenr() | quit | endif")

vim.cmd("autocmd BufEnter *.go,*.rs,*.cpp,*.c setlocal shiftwidth=4 tabstop=4")
vim.cmd("autocmd BufEnter ?akefile* setlocal shiftwidth=2 tabstop=2") -- For any Makefile, set indent to 2

vim.cmd("autocmd InsertEnter * if bufname() != 'NvimTree_1' | set relativenumber | endif")
vim.cmd("autocmd InsertLeave * if bufname() != 'NvimTree_1' | set norelativenumber | endif")

vim.api.nvim_create_autocmd({ "VimResized" }, {
	callback = function()
		vim.cmd("tabdo wincmd =")
	end,
})

vim.api.nvim_create_autocmd({ "CmdWinEnter" }, {
	callback = function()
		vim.cmd("quit")
	end,
})

vim.api.nvim_create_autocmd({ "TextYankPost" }, {
	callback = function()
		vim.highlight.on_yank({ higroup = "Visual", timeout = 200 })
	end,
})

-- vim.api.nvim_create_autocmd({ "BufWritePre" }, {
-- 	pattern = { "*.ts", "*.js", "*.tsx", ".jsx", "*.json", "*.css" },
-- 	callback = function()
-- 		vim.cmd("Prettier")
-- 	end,
-- })

vim.api.nvim_create_autocmd({ "VimEnter" }, {
	callback = function()
		vim.cmd("hi link illuminatedWord LspReferenceText")
		vim.cmd("GitGutterSignsDisable")
	end,
})

vim.api.nvim_create_autocmd({ "BufWinEnter" }, {
	callback = function()
		local line_count = vim.api.nvim_buf_line_count(0)
		if line_count >= 5000 then
			vim.cmd("IlluminatePauseBuf")
		end
	end,
})
