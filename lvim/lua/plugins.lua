lvim.plugins = {
  { 'ryanoasis/vim-devicons' },

  { 'sheerun/vim-polyglot' },
  { 'mbbill/undotree' },

  {
    "ray-x/go.nvim",
    config = function()
      require('go').setup({
        goimport = 'goimports', -- goimport command
        gofmt = 'gofumpt', --gofmt cmd,
        max_line_len = 120, -- max line length in goline format
        tag_transform = false, -- tag_transfer  check gomodifytags for details
        verbose = true, -- output loginf in messages
        log_path = vim.fn.expand("$HOME") .. "/.config/lvim/goLog.log",
        lsp_cfg = true, -- true: apply go.nvim non-default gopls setup
        lsp_gofumpt = false, -- true: set default gofmt in gopls format to gofumpt
        lsp_on_attach = true, -- if a on_attach function provided:  attach on_attach function to gopls
        -- true: will use go.nvim on_attach if true
        -- nil/false do nothing

        lsp_codelens = true,
        -- gopls_remote_auto = true, -- set to false is you do not want to pass -remote=auto to gopls(enable share)
        -- gopls_cmd = nil,
        -- if you need to specify gopls path and cmd, e.g {"/home/user/lsp/gopls", "-logfile", "/var/log/gopls.log" }
        lsp_diag_hdlr = true, -- hook lsp diag handler
        dap_debug = true, -- set to true to enable dap
        dap_debug_keymap = true, -- set keymaps for debugger
        dap_debug_gui = true, -- set to true to enable dap gui, highly recommand
        dap_debug_vt = true, -- set to true to enable dap virtual text
      })
    end,
    run = ":GoUpdateBinary",
  },

  {
    'simrat39/rust-tools.nvim',
    config = function()
      require('rust-tools').setup {
        server = {
          on_init = require("lvim.lsp").common_on_init,
          on_attach = function(client, bufnr)
            require("lvim.lsp").common_on_attach(client, bufnr)
            local rt = require "rust-tools"
            -- Hover actions
            vim.keymap.set("n", "<C-space>", rt.hover_actions.hover_actions, { buffer = bufnr })
            -- Code action groups
            vim.keymap.set("n", "<leader>lA", rt.code_action_group.code_action_group, { buffer = bufnr })
          end,
        },
      }
    end
  },

  {
    'saecki/crates.nvim',
    config = function()
      require('crates').setup()
    end,
  },

  { 'hankpeeples/sonokai-fork' },
  { 'rafamadriz/neon' },

  { 'wakatime/vim-wakatime' },

  -- { 'airblade/vim-gitgutter' },

  { 'luochen1990/rainbow' },

  { "milkias17/reloader.nvim" },

  {
    "norcalli/nvim-colorizer.lua",
    config = function()
      require("colorizer").setup()
    end,
  },

  {
    "folke/trouble.nvim",
    requires = "kyazdani42/nvim-web-devicons",
    config = function()
      require("trouble").setup({
        position = "bottom", -- position of the list can be: bottom, top, left, right
        height = 10, -- height of the trouble list when position is top or bottom
        width = 50, -- width of the list when position is left or right
        icons = true, -- use devicons for filenames
        mode = "document_diagnostics",
        action_keys = { -- key mappings for actions in the trouble list
          -- map to {} to remove a mapping, for example:
          -- close = {},
          close = "q", -- close the list
          cancel = "<esc>", -- cancel the preview and get back to your last window / buffer / cursor
          refresh = "r", -- manually refresh
          jump = { "<cr>", "<tab>" }, -- jump to the diagnostic or open / close folds
          open_split = { "<c-x>" }, -- open buffer in new split
          open_vsplit = { "<c-v>" }, -- open buffer in new vsplit
          open_tab = { "<c-t>" }, -- open buffer in new tab
          jump_close = { "o" }, -- jump to the diagnostic and close the list
          toggle_mode = "m", -- toggle between "workspace" and "document" diagnostics mode
          toggle_preview = "P", -- toggle auto_preview
          hover = "K", -- opens a small popup with the full multiline message
          preview = "p", -- preview the diagnostic location
          close_folds = { "zM", "zm" }, -- close all folds
          open_folds = { "zR", "zr" }, -- open all folds
          toggle_fold = { "zA", "za" }, -- toggle fold of current file
          previous = "k", -- preview item
          next = "j", -- next item
        },
        indent_lines = true, -- add an indent guide below the fold icons
        auto_open = false, -- automatically open the list when you have diagnostics
        auto_close = true, -- automatically close the list when you have no diagnostics
        auto_preview = true, -- automatically preview the location of the diagnostic. <esc> to close preview and go back to last window
        auto_fold = false, -- automatically fold a file trouble list at creation
        use_diagnostic_signs = true, -- enabling this will use the signs defined in your lsp client
      })
    end,
  },

}
