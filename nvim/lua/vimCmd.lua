vim.cmd([[
    " Change bg color of autocomplete popup
    autocmd ColorScheme * highlight Pmenu ctermbg=Gray guibg=Gray

    " Move line down Ctrl-j up with Ctrl-k
    nnoremap <C-j> mz:m+<cr>`z 
    nnoremap <C-k> mz:m-2<cr>`z 
    vnoremap <C-j> :m'>+<cr>`<my`>mzgv`yo`z 
    vnoremap <C-k> :m'<-2<cr>`>my`<mzgv`yo`z

    " Airline config symbols
    if !exists('g:airline_symbols')
        let g:airline_symbols = {}
    endif

    " unicode symbols
    let g:airline_left_sep = '»'
    let g:airline_left_sep = '▶'
    let g:airline_right_sep = '«'
    let g:airline_right_sep = '◀'
    let g:airline_symbols.colnr = ' ℅:'
    let g:airline_symbols.crypt = '🔒'
    let g:airline_symbols.linenr = ' ☰ '
    let g:airline_symbols.maxlinenr = ''
    let g:airline_symbols.branch = '⎇ '
    let g:airline_symbols.paste = 'ρ'
    let g:airline_symbols.paste = 'Þ'
    let g:airline_symbols.paste = '∥'
    let g:airline_symbols.spell = 'Ꞩ'
    let g:airline_symbols.notexists = 'Ɇ'
    "let g:airline_symbols.whitespace = 'Ξ'

    " GitGutter
    function! GitStatus()
        let [a,m,r] = GitGutterGetHunkSummary()
        return printf('+%d ~%d -%d', a, m, r)
    endfunction
    set statusline+=%{GitStatus()}
]])

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
]]
