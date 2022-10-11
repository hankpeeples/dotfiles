local bi = lvim.builtin;
-- After changing plugin config exit and reopen LunarVim, Run :PackerInstall :PackerCompile
bi.alpha.active = true
bi.alpha.mode = "dashboard"

bi.project.active = false

bi.dap.active = true

bi.notify.active = true

bi.terminal.active = true

-- For rust plugin
vim.list_extend(lvim.lsp.automatic_configuration.skipped_servers, { "rust_analyzer" })

vim.cmd [[highlight IndentOne guibg=#262a31 gui=nocombine]]
vim.cmd [[highlight IndentTwo guibg=#2b2f38 gui=nocombine]]
bi.indentlines = {
  active = false,
  on_config_done = nil,
  options = {
    enabled = true,
    buftype_exclude = { "terminal", "nofile" },
    filetype_exclude = {
      "help",
      "startify",
      "dashboard",
      "packer",
      "neogitstatus",
      "NvimTree",
      "Trouble",
      "text",
    },
    char = "",
    show_trailing_blankline_indent = false,
    show_first_indent_level = false,
    use_treesitter = true,
    show_current_context = true,
    char_highlight_list = {
      "IndentOne", "IndentTwo",
    },
    space_char_highlight_list = {
      "IndentOne", "IndentTwo",
    },
  },
}

bi.nvimtree.setup.view.side = "left"
bi.nvimtree.setup.renderer.icons.show.git = true
bi.nvimtree.setup.view.adaptive_size = true

bi.bufferline.options.always_show_bufferline = true
bi.bufferline.options.separator_style = "slant"

-- Syntax highlighting config
bi.treesitter = {
  ensure_installed = {
    'c', 'cpp', 'go', 'javascript', 'typescript', 'rust', 'json', 'yaml',
    'toml', 'lua', 'dockerfile', 'gitignore', 'gomod', 'java', 'cmake',
    'make', 'markdown', 'markdown_inline', 'bash'
  },
  ignore_install = { "haskell" },
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
  incremental_selection = {
    enable = true,
  }
}

-- Disable spell checking when in terminal
local spell_augroup = vim.api.nvim_create_augroup('spell_augroup', { clear = true })
vim.api.nvim_create_autocmd("TermOpen", {
  pattern = "*",
  command = "setlocal nospell",
  group = spell_augroup,
})

function _G.set_terminal_keymaps()
  vim.keymap.set('t', 'kj', [[<C-\><C-n>]], { buffer = 0 })
end

-- if you only want these mappings for toggle term use term://*toggleterm#* instead
vim.cmd('autocmd! TermOpen term://* lua set_terminal_keymaps()')

-- set a formatter, this will override the language server formatting capabilities (if it exists)
local formatters = require "lvim.lsp.null-ls.formatters"
formatters.setup {
  {
    -- each formatter accepts a list of options identical to https://github.com/jose-elias-alvarez/null-ls.nvim/blob/main/doc/BUILTINS.md#Configuration
    command = "prettier",
    ---@usage arguments to pass to the formatter
    -- these cannot contain whitespaces, options such as `--line-width 80` become either `{'--line-width', '80'}` or `{'--line-width=80'}`
    extra_args = { "--print-with", "90" },
    ---@usage specify which filetypes to enable. By default a providers will attach to all the filetypes it supports.
    filetypes = { "typescript", "typescriptreact", "javascript", "javascriptreact" },
  },
  -- {
  -- command = "clangd"
  -- }
}

-- set additional linters
local linters = require "lvim.lsp.null-ls.linters"
linters.setup {
  {
    -- each linter accepts a list of options identical to https://github.com/jose-elias-alvarez/null-ls.nvim/blob/main/doc/BUILTINS.md#Configuration
    command = "shellcheck",
    --@usage arguments to pass to the formatter
    -- these cannot contain whitespaces, options such as `--line-width 80` become either `{'--line-width', '80'}` or `{'--line-width=80'}`
    extra_args = { "--severity", "warning" }
  },
}

vim.api.nvim_create_autocmd("BufWritePre", {
  pattern = { "*.go" },
  command = ":silent! lua require('go.format').goimport()"
})

local dap = require "dap"
dap.adapters.go = {
  type = 'executable';
  command = 'node';
  args = { os.getenv('HOME') .. '/vscode-go/dist/debugAdapter.js' }; -- specify the path to the adapter
}
dap.configurations.go = {
  {
    type = "go",
    name = "Attach",
    request = "attach",
    processId = require("dap.utils").pick_process,
    program = "${workspaceFolder}",
    dlvToolPath = vim.fn.exepath('dlv')
  },
  {
    type = "go",
    name = "Debug curr file",
    request = "launch",
    program = "${file}",
    dlvToolPath = vim.fn.exepath('dlv')
  },
  {
    type = "go",
    name = "Debug",
    request = "launch",
    program = "${workspaceFolder}",
    dlvToolPath = vim.fn.exepath('dlv')
  },
  {
    type = "go",
    name = "Debug curr test",
    request = "launch",
    mode = "test",
    program = "${file}",
    dlvToolPath = vim.fn.exepath('dlv')
  },
  {
    type = "go",
    name = "Debug test",
    request = "launch",
    mode = "test",
    program = "${workspaceFolder}",
    dlvToolPath = vim.fn.exepath('dlv')
  },
}
