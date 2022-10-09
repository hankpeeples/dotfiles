HOME = os.getenv("HOME")

local vimo = vim.opt;
local vimg = vim.g;

-- set mapleader
vimg.mapleader = ","

-- disable netrw
vimg.loaded = 1
vimg.loaded_netrqPlugin = 1

-- COC LSP
vimo.updatetime = 200

-- basic settings
vimo.encoding = "utf-8"
vimo.backspace = "indent,eol,start" -- backspace works on every char in insert mode
vimo.completeopt = 'menuone,noselect'
vimo.startofline = true

-- Mapping waiting time
vimo.timeout = false
vimo.ttimeout = true
vimo.ttimeoutlen = 100

-- Display
vimo.showmatch = false -- show matching brackets
vimo.scrolloff = 3 -- always show 3 rows from edge of the screen
vimo.synmaxcol = 300 -- stop syntax highlight after x lines for performance
vimo.laststatus = 2 -- always show status line

vimo.list = false -- do not display white characters
vimo.foldenable = false
vimo.foldlevel = 4 -- limit folding to 4 levels
vimo.foldmethod = 'syntax' -- use language syntax to generate folds
vimo.wrap = true -- do not wrap lines even if very long
vimo.eol = false -- show if there's no eol char
vimo.showbreak = '↪' -- character to show when line is broken
vimo.syntax = 'off'

-- Sidebar
vimo.number = true -- line number on the left
vimo.numberwidth = 3 -- always reserve 3 spaces for line number
vimo.signcolumn = 'yes' -- keep 1 column for coc.vim
vimo.termguicolors = true
vimo.modelines = 1
vimo.showcmd = true -- display command in bottom bar

-- Search
vimo.incsearch = true -- starts searching as soon as typing, without enter needed

-- White characters
vimo.autoindent = true
vimo.smartindent = true
vimo.tabstop = 4 -- 1 tab = 2 spaces
vimo.shiftwidth = 4 -- indentation rule
vimo.formatoptions = 'qnj1' -- q  - comment formatting; n - numbered lists; j - remove comment when joining lines; 1 - don't break after one-letter word
vimo.expandtab = true -- expand tab to spaces

-- Backup files
vimo.backup = false -- use backup files
vimo.writebackup = false
vimo.swapfile = false -- do not use swap file
vimo.undodir = HOME .. '/.vim/tmp/undo//' -- undo files
vimo.backupdir = HOME .. '/.vim/tmp/backup//' -- backups
vimo.directory = '/.vim/tmp/swap//' -- swap files

vimo.cursorline = true
vimo.splitright = true

-- Autosave rust
vimg.rustfmt_autosave = 1

vimg.rehash256 = 1

-- GitGutter
vimg.gitgutter_map_keys = 0

-- Enable rainbow brackets
vimg.rainbow_active = 1

-- Switch godoc from opening in top window to balloon
vimg.go_doc_balloon = 1
vimg.go_fmt_autosave = 1
vimg.go_mod_fmt_autosave = 1
vimg.go_metalinter_autosave = 1
vimg.go_test_show_name = 1
vimg.go_auto_type_info = 1
vimg.go_imports_autosave = 0

-- Enable vim-airline integration:
vim.cmd('let g:airline#extensions#coc#enabled = 1')
vimg.airline_experimental = 1
-- Change error symbol:
vim.cmd('let airline#extensions#coc#error_symbol = "🚩 "')
-- Change warning symbol:
vim.cmd('let airline#extensions#coc#warning_symbol = "🏴 "')
-- Change error format:
vim.cmd('let airline#extensions#coc#stl_format_err = "%E{[%e(#%fe)]}"')
-- Change warning format:
vim.cmd('let airline#extensions#coc#stl_format_warn = "%W{[%w(#%fw)]}"')

vimg.airline_theme = 'murmur'
-- andromeda , atlantis
vimg.sonokai_style = "atlantis"
vimg.sonokai_better_performance = 1
vim.cmd('colorscheme sonokai')

