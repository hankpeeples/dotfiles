local vim = vim;

-- map custom keybinds
function map(mode, lhs, rhs, opts)
    local options = { noremap = true }
    if opts then
        options = vim.tbl_extend("force", options, opts)
    end
    vim.api.nvim_set_keymap(mode, lhs, rhs, options)
end

map("i", "kj", "<Esc>")
map("v", "kj", "<Esc>")

map("n", "7l", ":source %<CR>", { silent = true })
map("n", "gb", ":BufferLinePick<CR>", { silent = true })
map("n", "<leader>tt", ":ToggleTerm<CR>")
map("n", "<leader>utt", ":UndoTreeToggle<CR>")
map("n", "<leader>fe", ":NvimTreeToggle<CR>")
map("n", "<leader>ps", ":PackerSync<CR>")
map("n", "<leader>q", ":q<CR>")
map("n", "<leader>qa", ":confirm qall<CR>")
map("n", "<leader>w", "<C-w>w")
-- Go mappings
map("n", "<leader>gl", ":GoLint<CR>")
map("n", "<leader>gd", ":GoDefType<CR>")
map("n", "<leader>ge", ":GoIfErr<CR>")

-- coc
map("i", "<c-space>", "coc#refresh()", {silent = true, expr = true}) -- show completions
map("n", "[g", "<Plug>(coc-diagnostic-prev)", { silent = true })
map("n", "]g", "<Plug>(coc-diagnostic-next)", { silent = true })
-- Code navigation with coc
map("n", "gi", "<Plug>(coc-implementation)", { silent = true })
map("n", "gr", "<Plug>(coc-references)", { silent = true })
map("n", "<leader>rn", "<Plug>(coc-rename)")
-- Auto complete
function _G.check_back_space()
    local col = vim.fn.col('.') - 1
    return col == 0 or vim.fn.getline('.'):sub(col, col):match('%s')
end
-- Use  to trigger completion
map("i", "<S-space>", 'coc#pum#visible() ? coc#pum#next(1) : v:lua.check_back_space() ? "<S-space>" : coc#refresh()', { silent = true })
map("i", "<S-TAB>", [[ coc#pum#visible() ? coc#pum#prev(1) : "\<C-h>"]], { silent = true })
-- Use K to show documentation in preview window.
function _G.show_docs()
    local cw = vim.fn.expand('<cword>')
    if vim.fn.index({'vim', 'help'}, vim.bo.filetype) >= 0 then
        vim.api.nvim_command('h ' .. cw)
    elseif vim.api.nvim_eval('coc#rpc#ready()') then
        vim.fn.CocActionAsync('doHover')
    else
        vim.api.nvim_command('!' .. vim.o.keywordprg .. ' ' .. cw)
    end
end
map("n", "K", '<CMD>lua _G.show_docs()<CR>', {silent = true})
-- Add `:Format` command to format current buffer.
vim.api.nvim_create_user_command("Format", "call CocAction('format')", {})

