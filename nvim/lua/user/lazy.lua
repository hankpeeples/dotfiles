local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
  vim.fn.system({
    "git",
    "clone",
    "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git",
    "--branch=stable", -- latest stable release
    lazypath,
  })
end
vim.opt.rtp:prepend(lazypath)

local plugins = {
  -- My plugins here
  { "wbthomason/packer.nvim" }, -- Have packer manage itself
  { "nvim-lua/plenary.nvim" },  -- Useful lua functions used by lots of plugins
  { "windwp/nvim-autopairs" },  -- Autopairs, integrates with both cmp and treesitter
  { "numToStr/Comment.nvim" },
  { "JoosepAlviste/nvim-ts-context-commentstring" },
  { "nvim-tree/nvim-web-devicons" },
  { "kyazdani42/nvim-tree.lua" },
  { "moll/vim-bbye" },
  { "nvim-lualine/lualine.nvim" },
  { "akinsho/toggleterm.nvim" },
  { "ahmedkhalf/project.nvim" },
  -- { "lewis6991/impatient.nvim" },
  { "lukas-reineke/indent-blankline.nvim" },
  { "goolord/alpha-nvim" },
  { "ggandor/leap.nvim" },

  -- Cool stuff I've found
  -- {
  -- 	"samodostal/image.nvim",
  -- 	config = function()
  -- 		require("image").setup()
  -- 	end,
  -- },
  { "rest-nvim/rest.nvim" },
  { "ellisonleao/glow.nvim" }, -- Markdown preview
  -- { "feline-nvim/feline.nvim" },
  { "eandrju/cellular-automaton.nvim" },

  { "folke/lazy.nvim" },

  -- UI
  {
    "folke/noice.nvim",
    dependencies = {
      "MunifTanjim/nui.nvim",
      "rcarriga/nvim-notify",
    },
  },
  -- {
  -- 	"utilyre/barbecue.nvim",
  -- 	dependencies = {
  -- 		"neovim/nvim-lspconfig",
  -- 		"SmiteshP/nvim-navic",
  -- 		"nvim-tree/nvim-web-devicons",
  -- 	},
  -- },

  -- Treesitter
  { "nvim-treesitter/nvim-treesitter" },
  { "p00f/nvim-ts-rainbow" }, -- Must be loaded before 'bufferline' and any Colorschemes
  {
    "akinsho/bufferline.nvim",
    version = "^3.*",
    dependencies = "nvim-tree/nvim-web-devicons"
  },
  { "uga-rosa/ccc.nvim" },

  -- Colorschemes
  { "sainnhe/sonokai" },
  { "folke/tokyonight.nvim" },
  { 'sainnhe/gruvbox-material' },

  {
    "catppuccin/nvim",
    name = "catppuccin"
  },
  { 'dasupradyumna/midnight.nvim', lazy = false, priority = 1000 },

  -- cmp plugins
  { "hrsh7th/nvim-cmp" },         -- The completion plugin
  { "hrsh7th/cmp-buffer" },       -- buffer completions
  { "hrsh7th/cmp-path" },         -- path completions
  { "saadparwaiz1/cmp_luasnip" }, -- snippet completions
  { "hrsh7th/cmp-nvim-lsp" },
  { "hrsh7th/cmp-nvim-lua" },
  -- {
  -- 	"glepnir/lspsaga.nvim",
  -- 	event = "BufRead",
  -- 	dependencies = { { "nvim-tree/nvim-web-devicons" } },
  -- },
  -- tabnine AI Assistant
  -- {
  --   "tzachar/cmp-tabnine", -- Make sure to run `./install.sh` from `~/.local/share/nvim/lazy/cmp-tabnine`
  -- },

  -- snippets
  { "L3MON4D3/LuaSnip" },             --snippet engine
  { "rafamadriz/friendly-snippets" }, -- a bunch of snippets to use
  {
    "windwp/nvim-ts-autotag",
    config = function()
      require("nvim-ts-autotag").setup()
    end,
  },

  -- LSP
  { "williamboman/nvim-lsp-installer" }, -- simple to use language server installer
  { "neovim/nvim-lspconfig" },           -- enable LSP
  { "williamboman/mason.nvim" },
  { "williamboman/mason-lspconfig.nvim" },
  { "jose-elias-alvarez/null-ls.nvim" }, -- for formatters and linters
  { "RRethy/vim-illuminate" },
  { "folke/trouble.nvim" },
  { "j-hui/fidget.nvim" },
  { "MunifTanjim/prettier.nvim" },

  { "kevinhwang91/nvim-ufo",            dependencies = "kevinhwang91/promise-async" },

  -- Golang
  -- { "crispgm/nvim-go" },
  {
    "fatih/vim-go",
    run = ":GoUpdateBinaries",
    dependencies = {
      "junegunn/fzf.vim",
    },
  },

  -- Rust
  { "simrat39/rust-tools.nvim" },
  { "rust-lang/rust.vim" },

  -- Telescope
  { "nvim-telescope/telescope.nvim" },

  -- Git
  { "lewis6991/gitsigns.nvim" },
  { "airblade/vim-gitgutter" },
  { "f-person/git-blame.nvim" },

  -- DAP
  { "mfussenegger/nvim-dap" },
  { "rcarriga/nvim-dap-ui" },
  { "ravenxrz/DAPInstall.nvim" },

  -- Which Key
  { "folke/which-key.nvim" },

  { "wakatime/vim-wakatime" },

  -- Undotree
  { "mbbill/undotree" },
}

require("lazy").setup(plugins)
