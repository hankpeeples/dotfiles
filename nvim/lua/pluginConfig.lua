-- Syntax highlighting config
require('nvim-treesitter.configs').setup {
    ensure_installed = {
        'c', 'cpp', 'go', 'javascript', 'typescript', 'rust', 'json', 'yaml',
        'toml', 'lua', 'dockerfile', 'gitignore', 'gomod', 'java', 'cmake',
        'make', 'markdown', 'markdown_inline', 'bash'
    },
    sync_install = true,
    auto_install = true,
    highlight = {
        enable = true,
        -- disable slow treesitter highlight for large files
        disable = function(lang, buf)
            local max_filesize = 100 * 1024 -- 100 KB
            local ok, stats = pcall(vim.loop.fs_stat, vim.api.nvim_buf_get_name(buf))
            if ok and stats and stats.size > max_filesize then
                return true
            end
        end,
    },
    indent = { enable = true },
    rainbow = { enable = true },
    incremental_selection = {
        enable = true,
    }
}

require('spellsitter').setup {
    enable = true,
    debug = false,
}

-- Disable spell checking when in terminal
local spell_augroup = vim.api.nvim_create_augroup('spell_augroup',
    { clear = true }
)
vim.api.nvim_create_autocmd("TermOpen", {
    pattern = "*",
    command = "setlocal nospell",
    group = spell_augroup,
})

require('bufferline').setup {
    options = {
        diagnostics = "coc",
        separator_style = "slant",
    }
}

-- File Tree
require('nvim-tree').setup({
    sort_by = 'extension',
    view = { adaptive_size = true },
    renderer = {
        highlight_git = true,
        indent_markers = { enable = true },
    },
    diagnostics = { enable = true },
    -- filters = { dotfiles = true },
})

-- ToggleTerm
require("toggleterm").setup({
    shade_terminals = true,
    shading_factor = '1',
    insert_mappings = true,
    terminal_mappings = true,
    close_on_exit = true,
    auto_scroll = true,
    direction = 'float',
    float_opts = {
        border = 'curved',
    }
})

function _G.set_terminal_keymaps()
  vim.keymap.set('t', 'kj', [[<C-\><C-n>]], { buffer = 0})
end

-- if you only want these mappings for toggle term use term://*toggleterm#* instead
vim.cmd('autocmd! TermOpen term://* lua set_terminal_keymaps()')

_G.__luacache_config = {
    chunks = {
        enable = true,
        path = vim.fn.stdpath('cache')..'/luacache_chunks',
    },
    modpaths = {
        enable = false,
    }
}
require('impatient')

vim.cmd('autocmd VimEnter * :GitGutterLineNrHighlightsToggle')
