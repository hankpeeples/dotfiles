lvim.plugins = {
  { 'ryanoasis/vim-devicons' },

  { 'sheerun/vim-polyglot' },
  { 'mbbill/undotree' },

  -- {
  --   "ray-x/go.nvim",
  --   config = function()
  --     require('go').setup({
  --       goimport = 'goimports', -- goimport command
  --       gofmt = 'gofumpt', --gofmt cmd,
  --       max_line_len = 120, -- max line length in goline format
  --       tag_transform = false, -- tag_transfer  check gomodifytags for details
  --       verbose = true, -- output loginf in messages
  --       log_path = vim.fn.expand("$HOME") .. "/.config/lvim/goLog.log",
  --       lsp_cfg = true, -- true: apply go.nvim non-default gopls setup
  --       lsp_gofumpt = false, -- true: set default gofmt in gopls format to gofumpt
  --       lsp_on_attach = true, -- if a on_attach function provided:  attach on_attach function to gopls
  --       -- true: will use go.nvim on_attach if true
  --       -- nil/false do nothing

  --       lsp_codelens = true,
  --       -- gopls_remote_auto = true, -- set to false is you do not want to pass -remote=auto to gopls(enable share)
  --       -- gopls_cmd = nil,
  --       -- if you need to specify gopls path and cmd, e.g {"/home/user/lsp/gopls", "-logfile", "/var/log/gopls.log" }
  --       lsp_diag_hdlr = true, -- hook lsp diag handler
  --       dap_debug = true, -- set to true to enable dap
  --       dap_debug_keymap = true, -- set keymaps for debugger
  --       dap_debug_gui = true, -- set to true to enable dap gui, highly recommand
  --       dap_debug_vt = true, -- set to true to enable dap virtual text
  --     })
  --   end,
  --   run = ":GoUpdateBinary",
  -- },

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
        autoSetHints = true,
        inlay_hints = {
          only_current_line = true,
          only_current_line_autocmd = "CursorHold",
          right_align = true,
          right_align_padding = 7,
        }
      }
    end
  },

  {
    'saecki/crates.nvim',
    config = function()
      require('crates').setup()
    end,
  },

  {
    'j-hui/fidget.nvim',
    config = function()
      require "fidget".setup {
        window = {
          blend = 0,
        },
      }
    end
  },

  { 'hankpeeples/sonokai-fork' },
  { 'rafamadriz/neon' },

  {
    "catppuccin/nvim",
    as = "catppuccin",
    config = function()
      require("catppuccin").setup({
        flavour = "mocha", -- latte, frappe, macchiato, mocha
        background = { -- :h background
          light = "latte",
          dark = "mocha",
        },
        compile_path = vim.fn.stdpath("cache") .. "/catppuccin",
        transparent_background = false,
        term_colors = true,
        dim_inactive = {
          enabled = false,
          shade = "dark",
          percentage = 0.15,
        },
        styles = {
          comments = { "italic" },
          conditionals = { "bold" },
          loops = {},
          functions = { "bold" },
          keywords = { "italic" },
          strings = {},
          variables = {},
          numbers = {},
          booleans = {},
          properties = {},
          types = {},
          operators = { "bold" },
        },
        color_overrides = {
          mocha = {
            rosewater = "#F5E0DC",
            flamingo = "#F2CDCD",
            mauve = "#DDB6F2",
            pink = "#F5C2E7",
            red = "#F28FAD",
            maroon = "#E8A2AF",
            peach = "#F8BD96",
            yellow = "#FAE3B0",
            green = "#ABE9B3",
            blue = "#96CDFB",
            sky = "#89DCEB",
            teal = "#B5E8E0",
            lavender = "#C9CBFF",

            text = "#D9E0EE",
            subtext1 = "#BAC2DE",
            subtext0 = "#A6ADC8",
            overlay2 = "#C3BAC6",
            overlay1 = "#988BA2",
            overlay0 = "#6E6C7E",
            surface2 = "#6E6C7E",
            surface1 = "#575268",
            surface0 = "#302D41",
          },
          highlight_overrides = {
            mocha = function(cp)
              return {
                -- For base configs.
                CursorLineNr = { fg = cp.green },
                Search = { bg = cp.surface1, fg = cp.pink, style = { "bold" } },
                IncSearch = { bg = cp.pink, fg = cp.surface1 },

                -- For native lsp configs.
                DiagnosticVirtualTextError = { bg = cp.none },
                DiagnosticVirtualTextWarn = { bg = cp.none },
                DiagnosticVirtualTextInfo = { bg = cp.none },
                DiagnosticVirtualTextHint = { fg = cp.rosewater, bg = cp.none },

                DiagnosticHint = { fg = cp.rosewater },
                LspDiagnosticsDefaultHint = { fg = cp.rosewater },
                LspDiagnosticsHint = { fg = cp.rosewater },
                LspDiagnosticsVirtualTextHint = { fg = cp.rosewater },
                LspDiagnosticsUnderlineHint = { sp = cp.rosewater },

                -- For fidget.
                FidgetTask = { bg = cp.none, fg = cp.surface2 },
                FidgetTitle = { fg = cp.blue, style = { "bold" } },

                -- For treesitter.
                ["@field"] = { fg = cp.rosewater },
                ["@property"] = { fg = cp.yellow },

                ["@include"] = { fg = cp.teal },
                ["@operator"] = { fg = cp.sky },
                ["@keyword.operator"] = { fg = cp.sky },
                ["@punctuation.special"] = { fg = cp.maroon },

                -- ["@float"] = { fg = cp.peach },
                -- ["@number"] = { fg = cp.peach },
                -- ["@boolean"] = { fg = cp.peach },

                ["@constructor"] = { fg = cp.lavender },
                -- ["@constant"] = { fg = cp.peach },
                -- ["@conditional"] = { fg = cp.mauve },
                -- ["@repeat"] = { fg = cp.mauve },
                ["@exception"] = { fg = cp.peach },

                ["@constant.builtin"] = { fg = cp.lavender },
                -- ["@function.builtin"] = { fg = cp.peach, style = { "italic" } },
                -- ["@type.builtin"] = { fg = cp.yellow, style = { "italic" } },
                ["@variable.builtin"] = { fg = cp.red, style = { "italic" } },

                -- ["@function"] = { fg = cp.blue },
                ["@function.macro"] = { fg = cp.red, style = {} },
                ["@parameter"] = { fg = cp.rosewater },
                ["@keyword.function"] = { fg = cp.maroon },
                ["@keyword"] = { fg = cp.red },
                ["@keyword.return"] = { fg = cp.pink, style = {} },

                -- ["@text.note"] = { fg = cp.base, bg = cp.blue },
                -- ["@text.warning"] = { fg = cp.base, bg = cp.yellow },
                -- ["@text.danger"] = { fg = cp.base, bg = cp.red },
                -- ["@constant.macro"] = { fg = cp.mauve },

                -- ["@label"] = { fg = cp.blue },
                -- ["@method"] = { style = { "italic" } },
                ["@namespace"] = { fg = cp.rosewater, style = {} },

                ["@punctuation.delimiter"] = { fg = cp.teal },
                ["@punctuation.bracket"] = { fg = cp.overlay2 },
                -- ["@string"] = { fg = cp.green },
                -- ["@string.regex"] = { fg = cp.peach },
                -- ["@type"] = { fg = cp.yellow },
                ["@variable"] = { fg = cp.text },
                ["@tag.attribute"] = { fg = cp.mauve, style = { "italic" } },
                ["@tag"] = { fg = cp.peach },
                ["@tag.delimiter"] = { fg = cp.maroon },
                ["@text"] = { fg = cp.text },

                -- ["@text.uri"] = { fg = cp.rosewater, style = { "italic", "underline" } },
                -- ["@text.literal"] = { fg = cp.teal, style = { "italic" } },
                -- ["@text.reference"] = { fg = cp.lavender, style = { "bold" } },
                -- ["@text.title"] = { fg = cp.blue, style = { "bold" } },
                -- ["@text.emphasis"] = { fg = cp.maroon, style = { "italic" } },
                -- ["@text.strong"] = { fg = cp.maroon, style = { "bold" } },
                -- ["@string.escape"] = { fg = cp.pink },

                -- ["@property.toml"] = { fg = cp.blue },
                -- ["@field.yaml"] = { fg = cp.blue },

                -- ["@label.json"] = { fg = cp.blue },

                ["@function.builtin.bash"] = { fg = cp.red, style = { "italic" } },
                ["@parameter.bash"] = { fg = cp.yellow, style = { "italic" } },

                ["@field.lua"] = { fg = cp.lavender },
                ["@constructor.lua"] = { fg = cp.flamingo },

                ["@constant.java"] = { fg = cp.teal },

                ["@property.typescript"] = { fg = cp.lavender, style = { "italic" } },
                -- ["@constructor.typescript"] = { fg = cp.lavender },

                -- ["@constructor.tsx"] = { fg = cp.lavender },
                -- ["@tag.attribute.tsx"] = { fg = cp.mauve },

                ["@type.css"] = { fg = cp.lavender },
                ["@property.css"] = { fg = cp.yellow, style = { "italic" } },

                ["@property.cpp"] = { fg = cp.text },

                -- ["@symbol"] = { fg = cp.flamingo },
              }
            end,
          },
          integrations = {
            cmp = true,
            gitsigns = true,
            nvimtree = true,
            telescope = true,
            treesitter = true,
            gitgutter = true,
            lsp_trouble = true,
            notify = true,
            which_key = true,
            mason = true,
            fidget = true,
            native_lsp = {
              enabled = true,
              underlines = {
                errors = { "underline" },
                hints = { "underline" },
                warnings = { "underline" },
                information = { "underline" },
              },
            }
            -- For more plugins integrations please scroll down (https://github.com/catppuccin/nvim#integrations)
          },
        }
      })
      vim.api.nvim_command "colorscheme catppuccin"
    end
  },

  { 'wakatime/vim-wakatime' },

  -- { 'airblade/vim-gitgutter' },

  { 'luochen1990/rainbow' },

  {
    "ggandor/leap.nvim",
    config = function()
      require('leap').setup({
        max_phase_one_targets = nil,
        highlight_unlabeled_phase_one_targets = false,
        max_highlighted_traversal_targets = 10,
        case_sensitive = false,
        equivalence_classes = { ' \t\r\n', },
        substitute_chars = {},
        safe_labels = { 's', 'f', 'n', 'u', 't' },
        labels = { 's', 'f', 'n', 'j', 'k' },
        special_keys = {
          repeat_search = '<enter>',
          next_phase_one_target = '<enter>',
          next_target = { '<enter>', ';' },
          prev_target = { '<tab>', ',' },
          next_group = '<space>',
          prev_group = '<tab>',
          multi_accept = '<enter>',
          multi_revert = '<backspace>',
        }
      })
    end
  },

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
