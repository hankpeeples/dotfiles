HOME = os.getenv("HOME")

local vimo = vim.opt;
local vimg = vim.g;

-- general
lvim.log.level = "warn"
lvim.format_on_save = true

-- andromeda , atlantis
vimg.sonokai_style = "default"

lvim.colorscheme = "sonokai"

vimg.neon_style = 'default'
vimg.neon_italic_keyword = true
vimg.neon_italic_function = true

lvim.transparent_window = false

lvim.use_icons = true

-- Change theme settings
-- lvim.builtin.theme.options.dim_inactive = true

-- set mapleader
lvim.leader = ","

-- disable netrw
vimg.loaded = 1
vimg.loaded_netrqPlugin = 1

vimo.updatetime = 300

-- basic settings
vimo.encoding = "utf-8"
vimo.backspace = "indent,eol,start" -- backspace works on every char in insert mode
vimo.completeopt = { "menuone", "noselect" }
vimo.startofline = true
vimo.clipboard = "unnamedplus" -- allows neovim to access the system clipboard
vimo.conceallevel = 0 -- so that `` is visible in markdown files
vimo.hidden = true -- required to keep multiple buffers and open multiple buffers
vimo.pumheight = 10 -- pop up menu height
vimo.cmdheight = 2 -- more space in the neovim command line for displaying messages
vimo.colorcolumn = "99999" -- fixes indentline for now

-- Mapping waiting time
vimo.timeoutlen = 100

-- Display
vimo.showtabline = 2 -- always show tabs
vimo.smartcase = true -- smart case
vimo.showmatch = false -- show matching brackets
vimo.synmaxcol = 300 -- stop syntax highlight after x lines for performance
vimo.laststatus = 2 -- always show status line
vimo.title = false -- set the title of window to the value of the titlestring
vimo.titlestring = "%<%F%=%l/%L - nvim" -- what the title of the window will be set to

vimo.list = true -- do not display white characters
vimo.foldenable = false
vimo.foldlevel = 4 -- limit folding to 4 levels
vimo.foldmethod = 'syntax' -- use language syntax to generate folds
vimo.wrap = false -- do not wrap lines even if very long
vimo.eol = false -- show if there's no eol char
vimo.showbreak = '↪' -- character to show when line is broken
vimo.syntax = 'off'

-- Sidebar
vimo.number = true -- line number on the left

vimo.numberwidth = 4
vimo.termguicolors = true
vimo.modelines = 1
vimo.showcmd = true -- display command in bottom bar

-- Search
vimo.incsearch = true -- starts searching as soon as typing, without enter needed

-- White characters
vimo.autoindent = true
vimo.smartindent = true
vimo.tabstop = 2 -- 1 tab = 2 spaces
vimo.shiftwidth = 4 -- indentation rule
-- vimo.formatoptions = 'qnj1' -- q  - comment formatting; n - numbered lists; j - remove comment when joining lines; 1 - don't break after one-letter word
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

vimo.spell = false
vimo.spelllang = "en"
vimo.scrolloff = 8 -- is one of my fav
vimo.sidescrolloff = 8

-- Autosave rust
vimg.rustfmt_autosave = 1

vimg.rehash256 = 1

-- Enable rainbow brackets
vimg.rainbow_active = 0

-- Switch godoc from opening in top window to balloon
--vimg.go_doc_balloon = 1
--vimg.go_fmt_autosave = 1
--vimg.go_mod_fmt_autosave = 1
--vimg.go_metalinter_autosave = 1
--vimg.go_test_show_name = 1
--vimg.go_auto_type_info = 1
--vimg.go_imports_autosave = 0

-- make sure server will always be installed even if the server is in skipped_servers list
-- lvim.lsp.installer.setup.automatic_servers_installation = true
-- change UI setting of `LspInstallInfo`
-- see <https://github.com/williamboman/nvim-lsp-installer#default-configuration>
-- lvim.lsp.installer.setup.ui.check_outdated_servers_on_open = true
-- lvim.lsp.installer.setup.ui.border = "rounded"
-- lvim.lsp.installer.setup.ui.keymaps = {
-- uninstall_server = "d",
-- toggle_server_expand = "o",
-- }
