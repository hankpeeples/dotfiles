vim.cmd [[
    " Move line down Ctrl-j up with Ctrl-k
    nnoremap <C-j> mz:m+<cr>`z
    nnoremap <C-k> mz:m-2<cr>`z
    vnoremap <C-j> :m'>+<cr>`<my`>mzgv`yo`z
    vnoremap <C-k> :m'<-2<cr>`>my`<mzgv`yo`z

    " bracket autoclosing
    inoremap {<CR> {<CR>}<ESC>O
    inoremap {;<CR> {<CR>};<ESC>O
    inoremap <expr> ) strpart(getline('.'), col('.')-1, 1) == ")" ? "\<Right>" : ")"
    inoremap <expr> } strpart(getline('.'), col('.')-1, 1) == "}" ? "\<Right>" : "}"
    inoremap <expr> ] strpart(getline('.'), col('.')-1, 1) == "]" ? "\<Right>" : "]"
    inoremap <expr> ' strpart(getline('.'), col('.')-1, 1) == "\'" ? "\<Right>" : "\'\'\<Left>"
    inoremap <expr> " strpart(getline('.'), col('.')-1, 1) == "\"" ? "\<Right>" : "\"\"\<Left>"
]]

-- For Undotree persistent
vim.cmd [[
    if has("persistent_undo")
        let target_path = expand('~/.undodir')
        if !isdirectory(target_path)
            call mkdir(target_path, "p", 0700)
        endif
        let &undodir = target_path
        set undofile
    endif
]]

-- Highlight on yank
vim.cmd [[
    augroup YankHighlight
        autocmd!
        autocmd TextYankPost * silent! lua vim.highlight.on_yank()
    augroup end

    " Insert mode = relative | Normal = hybrid (line numbers)
    augroup numbertoggle
        autocmd!
        autocmd BufEnter,FocusGained,InsertLeave,WinEnter * if &nu && mode() != "i" | set rnu   | endif
        autocmd BufLeave,FocusLost,InsertEnter,WinLeave   * if &nu                  | set nornu | endif
    augroup END

    augroup RestoreCursorShapeOnExit
        autocmd!
        autocmd VimLeave * set guicursor=a:hor20
    augroup END

    augroup OpenNvimTree
        autocmd!
        autocmd VimEnter * :NvimTreeToggle %
    augroup END
]]

vim.cmd [[augroup rainbow]]
vim.cmd [[	au BufEnter *     hi      TSPunctBracket NONE]]
vim.cmd [[	au BufEnter *     hi link TSPunctBracket nonexistenthl]]
vim.cmd [[	au BufEnter *.lua hi      TSConstructor  NONE]]
vim.cmd [[	au BufEnter *.lua hi link TSConstructor  nonexistenthl]]
vim.cmd [[augroup END]]
