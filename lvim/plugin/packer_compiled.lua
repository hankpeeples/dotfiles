-- Automatically generated packer.nvim plugin loader code

if vim.api.nvim_call_function('has', {'nvim-0.5'}) ~= 1 then
  vim.api.nvim_command('echohl WarningMsg | echom "Invalid Neovim version for packer.nvim! | echohl None"')
  return
end

vim.api.nvim_command('packadd packer.nvim')

local no_errors, error_msg = pcall(function()

_G._packer = _G._packer or {}
_G._packer.inside_compile = true

local time
local profile_info
local should_profile = false
if should_profile then
  local hrtime = vim.loop.hrtime
  profile_info = {}
  time = function(chunk, start)
    if start then
      profile_info[chunk] = hrtime()
    else
      profile_info[chunk] = (hrtime() - profile_info[chunk]) / 1e6
    end
  end
else
  time = function(chunk, start) end
end

local function save_profiles(threshold)
  local sorted_times = {}
  for chunk_name, time_taken in pairs(profile_info) do
    sorted_times[#sorted_times + 1] = {chunk_name, time_taken}
  end
  table.sort(sorted_times, function(a, b) return a[2] > b[2] end)
  local results = {}
  for i, elem in ipairs(sorted_times) do
    if not threshold or threshold and elem[2] > threshold then
      results[i] = elem[1] .. ' took ' .. elem[2] .. 'ms'
    end
  end
  if threshold then
    table.insert(results, '(Only showing plugins that took longer than ' .. threshold .. ' ms ' .. 'to load)')
  end

  _G._packer.profile_output = results
end

time([[Luarocks path setup]], true)
local package_path_str = "/Users/hankpeeples/.cache/lvim/packer_hererocks/2.1.0-beta3/share/lua/5.1/?.lua;/Users/hankpeeples/.cache/lvim/packer_hererocks/2.1.0-beta3/share/lua/5.1/?/init.lua;/Users/hankpeeples/.cache/lvim/packer_hererocks/2.1.0-beta3/lib/luarocks/rocks-5.1/?.lua;/Users/hankpeeples/.cache/lvim/packer_hererocks/2.1.0-beta3/lib/luarocks/rocks-5.1/?/init.lua"
local install_cpath_pattern = "/Users/hankpeeples/.cache/lvim/packer_hererocks/2.1.0-beta3/lib/lua/5.1/?.so"
if not string.find(package.path, package_path_str, 1, true) then
  package.path = package.path .. ';' .. package_path_str
end

if not string.find(package.cpath, install_cpath_pattern, 1, true) then
  package.cpath = package.cpath .. ';' .. install_cpath_pattern
end

time([[Luarocks path setup]], false)
time([[try_loadstring definition]], true)
local function try_loadstring(s, component, name)
  local success, result = pcall(loadstring(s), name, _G.packer_plugins[name])
  if not success then
    vim.schedule(function()
      vim.api.nvim_notify('packer.nvim: Error running ' .. component .. ' for ' .. name .. ': ' .. result, vim.log.levels.ERROR, {})
    end)
  end
  return result
end

time([[try_loadstring definition]], false)
time([[Defining packer_plugins]], true)
_G.packer_plugins = {
  ["Comment.nvim"] = {
    config = { "\27LJ\2\n?\0\0\3\0\3\0\0066\0\0\0'\2\1\0B\0\2\0029\0\2\0B\0\1\1K\0\1\0\nsetup\22lvim.core.comment\frequire\0" },
    loaded = false,
    needs_bufread = false,
    only_cond = false,
    path = "/Users/hankpeeples/.local/share/lunarvim/site/pack/packer/opt/Comment.nvim",
    url = "https://github.com/numToStr/Comment.nvim"
  },
  LuaSnip = {
    config = { "\27LJ\2\nñ\3\0\0\v\0\23\00166\0\0\0'\2\1\0B\0\2\0024\1\0\0006\2\2\0009\2\3\0029\2\4\0029\2\5\0029\2\6\2\15\0\2\0X\3\f€\21\2\1\0\22\2\0\0029\3\a\0006\5\b\0B\5\1\2'\6\t\0'\a\n\0'\b\v\0'\t\f\0'\n\r\0B\3\a\2<\3\2\0019\2\a\0006\4\14\0B\4\1\2'\5\15\0B\2\3\0029\3\16\0\18\5\2\0B\3\2\2\15\0\3\0X\4\3€\21\3\1\0\22\3\0\3<\2\3\0016\3\0\0'\5\17\0B\3\2\0029\3\18\3B\3\1\0016\3\0\0'\5\19\0B\3\2\0029\3\18\0035\5\20\0=\1\21\5B\3\2\0016\3\0\0'\5\22\0B\3\2\0029\3\18\3B\3\1\1K\0\1\0\"luasnip.loaders.from_snipmate\npaths\1\0\0 luasnip.loaders.from_vscode\14lazy_load\29luasnip.loaders.from_lua\17is_directory\rsnippets\19get_config_dir\22friendly-snippets\nstart\vpacker\tpack\tsite\20get_runtime_dir\15join_paths\22friendly_snippets\fsources\fluasnip\fbuiltin\tlvim\15lvim.utils\frequire\2\0" },
    loaded = true,
    path = "/Users/hankpeeples/.local/share/lunarvim/site/pack/packer/start/LuaSnip",
    url = "https://github.com/L3MON4D3/LuaSnip"
  },
  ["alpha-nvim"] = {
    config = { "\27LJ\2\n=\0\0\3\0\3\0\0066\0\0\0'\2\1\0B\0\2\0029\0\2\0B\0\1\1K\0\1\0\nsetup\20lvim.core.alpha\frequire\0" },
    loaded = true,
    path = "/Users/hankpeeples/.local/share/lunarvim/site/pack/packer/start/alpha-nvim",
    url = "https://github.com/goolord/alpha-nvim"
  },
  ["bufferline.nvim"] = {
    config = { "\27LJ\2\nB\0\0\3\0\3\0\0066\0\0\0'\2\1\0B\0\2\0029\0\2\0B\0\1\1K\0\1\0\nsetup\25lvim.core.bufferline\frequire\0" },
    loaded = false,
    needs_bufread = false,
    only_cond = false,
    path = "/Users/hankpeeples/.local/share/lunarvim/site/pack/packer/opt/bufferline.nvim",
    url = "https://github.com/akinsho/bufferline.nvim"
  },
  catppuccin = {
    config = { "\27LJ\2\n¨\15\0\1\4\0{\0Ø\0015\1\3\0005\2\1\0009\3\0\0=\3\2\2=\2\4\0015\2\6\0009\3\5\0=\3\a\0029\3\b\0=\3\2\0025\3\t\0=\3\n\2=\2\v\0015\2\f\0009\3\b\0=\3\a\0029\3\5\0=\3\2\2=\2\r\0015\2\15\0009\3\14\0=\3\a\2=\2\16\0015\2\17\0009\3\14\0=\3\a\2=\2\18\0015\2\19\0009\3\14\0=\3\a\2=\2\20\0015\2\22\0009\3\21\0=\3\2\0029\3\14\0=\3\a\2=\2\23\0015\2\24\0009\3\21\0=\3\2\2=\2\25\0015\2\26\0009\3\21\0=\3\2\2=\2\27\0015\2\28\0009\3\21\0=\3\2\2=\2\29\0015\2\30\0009\3\21\0=\3\2\2=\2\31\0015\2 \0009\3\21\0=\3!\2=\2\"\0015\2#\0009\3\14\0=\3\a\0029\3$\0=\3\2\2=\2%\0015\2'\0009\3&\0=\3\2\0025\3(\0=\3\n\2=\2)\0015\2*\0009\3\21\0=\3\2\2=\2+\0015\2-\0009\3,\0=\3\2\2=\2.\0015\0020\0009\3/\0=\3\2\2=\0021\0015\0023\0009\0032\0=\3\2\2=\0024\0015\0025\0009\0032\0=\3\2\2=\0026\0015\0028\0009\0037\0=\3\2\2=\0029\0015\2;\0009\3:\0=\3\2\2=\2<\0015\2>\0009\3=\0=\3\2\2=\2?\0015\2@\0009\3:\0=\3\2\2=\2A\0015\2C\0009\3B\0=\3\2\0025\3D\0=\3\n\2=\2E\0015\2F\0009\3B\0=\3\2\0024\3\0\0=\3\n\2=\2G\0015\2H\0009\3\21\0=\3\2\2=\2I\0015\2J\0009\0037\0=\3\2\2=\2K\0015\2L\0009\3B\0=\3\2\2=\2M\0015\2N\0009\3\b\0=\3\2\0024\3\0\0=\3\n\2=\2O\0015\2P\0009\3\21\0=\3\2\0024\3\0\0=\3\n\2=\2Q\0015\2R\0009\3/\0=\3\2\2=\2S\0015\2U\0009\3T\0=\3\2\2=\2V\0015\2X\0009\3W\0=\3\2\2=\2Y\0015\2[\0009\3Z\0=\3\2\0025\3\\\0=\3\n\2=\2]\0015\2^\0009\3=\0=\3\2\2=\2_\0015\2`\0009\0037\0=\3\2\2=\2a\0015\2b\0009\3W\0=\3\2\2=\2c\0015\2d\0009\3B\0=\3\2\0025\3e\0=\3\n\2=\2f\0015\2g\0009\3,\0=\3\2\0025\3h\0=\3\n\2=\2i\0015\2j\0009\3:\0=\3\2\2=\2k\0015\2m\0009\3l\0=\3\2\2=\2n\0015\2o\0009\3/\0=\3\2\2=\2p\0015\2q\0009\3:\0=\3\2\0025\3r\0=\3\n\2=\2s\0015\2t\0009\3:\0=\3\2\2=\2u\0015\2v\0009\3,\0=\3\2\0025\3w\0=\3\n\2=\2x\0015\2y\0009\3W\0=\3\2\2=\2z\1L\1\2\0\18@property.cpp\1\0\0\18@property.css\1\2\0\0\vitalic\1\0\0\14@type.css\1\0\0\25@property.typescript\1\2\0\0\vitalic\1\0\0\19@constant.java\1\0\0\21@constructor.lua\1\0\0\rflamingo\15@field.lua\1\0\0\20@parameter.bash\1\2\0\0\vitalic\1\0\0\27@function.builtin.bash\1\2\0\0\vitalic\1\0\0\n@text\1\0\0\19@tag.delimiter\1\0\0\t@tag\1\0\0\19@tag.attribute\1\2\0\0\vitalic\1\0\0\nmauve\14@variable\1\0\0\ttext\25@punctuation.bracket\1\0\0\roverlay2\27@punctuation.delimiter\1\0\0\15@namespace\1\0\0\20@keyword.return\1\0\0\r@keyword\1\0\0\22@keyword.function\1\0\0\15@parameter\1\0\0\20@function.macro\1\0\0\22@variable.builtin\1\2\0\0\vitalic\1\0\0\bred\22@constant.builtin\1\0\0\15@exception\1\0\0\npeach\17@constructor\1\0\0\rlavender\25@punctuation.special\1\0\0\vmaroon\22@keyword.operator\1\0\0\14@operator\1\0\0\bsky\r@include\1\0\0\tteal\14@property\1\0\0\vyellow\v@field\1\0\0\16FidgetTitle\1\2\0\0\tbold\1\0\0\tblue\15FidgetTask\rsurface2\1\0\0 LspDiagnosticsUnderlineHint\asp\1\0\0\"LspDiagnosticsVirtualTextHint\1\0\0\23LspDiagnosticsHint\1\0\0\30LspDiagnosticsDefaultHint\1\0\0\19DiagnosticHint\1\0\0\30DiagnosticVirtualTextHint\1\0\0\14rosewater\30DiagnosticVirtualTextInfo\1\0\0\30DiagnosticVirtualTextWarn\1\0\0\31DiagnosticVirtualTextError\1\0\0\tnone\14IncSearch\1\0\0\vSearch\nstyle\1\2\0\0\tbold\tpink\abg\1\0\0\rsurface1\17CursorLineNr\1\0\0\afg\1\0\0\ngreen”\n\1\0\b\0006\0C6\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\3\0005\3\4\0=\3\5\0026\3\6\0009\3\a\0039\3\b\3'\5\t\0B\3\2\2'\4\n\0&\3\4\3=\3\v\0025\3\f\0=\3\r\0025\3\15\0005\4\14\0=\4\16\0035\4\17\0=\4\18\0034\4\0\0=\4\19\0035\4\20\0=\4\21\0035\4\22\0=\4\23\0034\4\0\0=\4\24\0034\4\0\0=\4\25\0034\4\0\0=\4\26\0034\4\0\0=\4\27\0034\4\0\0=\4\28\0034\4\0\0=\4\29\0035\4\30\0=\4\31\3=\3 \0025\3\"\0005\4!\0=\4#\0035\4%\0003\5$\0=\5#\4=\4&\0035\4'\0005\5(\0005\6*\0005\a)\0=\a+\0065\a,\0=\a-\0065\a.\0=\a/\0065\a0\0=\a1\6=\0062\5=\0053\4=\0044\3=\0035\2B\0\2\1K\0\1\0\20color_overrides\17integrations\15native_lsp\15underlines\16information\1\2\0\0\14underline\rwarnings\1\2\0\0\14underline\nhints\1\2\0\0\14underline\verrors\1\0\0\1\2\0\0\14underline\1\0\1\fenabled\2\1\0\v\14telescope\2\vfidget\2\nmason\2\vnotify\2\14which_key\2\bcmp\2\16lsp_trouble\2\rgitsigns\2\rnvimtree\2\15treesitter\2\14gitgutter\2\24highlight_overrides\1\0\0\0\nmocha\1\0\0\1\0\22\tblue\f#96CDFB\ngreen\f#ABE9B3\14rosewater\f#F5E0DC\rsubtext0\f#A6ADC8\rsubtext1\f#BAC2DE\roverlay2\f#C3BAC6\rsurface1\f#575268\tpink\f#F5C2E7\nmauve\f#DDB6F2\npeach\f#F8BD96\roverlay1\f#988BA2\roverlay0\f#6E6C7E\rsurface2\f#6E6C7E\rflamingo\f#F2CDCD\rsurface0\f#302D41\bsky\f#89DCEB\vmaroon\f#E8A2AF\bred\f#F28FAD\rlavender\f#C9CBFF\ttext\f#D9E0EE\vyellow\f#FAE3B0\tteal\f#B5E8E0\vstyles\14operators\1\2\0\0\tbold\ntypes\15properties\rbooleans\fnumbers\14variables\fstrings\rkeywords\1\2\0\0\vitalic\14functions\1\2\0\0\tbold\nloops\17conditionals\1\2\0\0\tbold\rcomments\1\0\0\1\2\0\0\vitalic\17dim_inactive\1\0\3\15percentage\4³æÌ™\3³æŒþ\3\fenabled\1\nshade\tdark\17compile_path\16/catppuccin\ncache\fstdpath\afn\bvim\15background\1\0\2\tdark\nmocha\nlight\nlatte\1\0\3\27transparent_background\1\16term_colors\2\fflavour\nmocha\nsetup\15catppuccin\frequire\0" },
    loaded = true,
    path = "/Users/hankpeeples/.local/share/lunarvim/site/pack/packer/start/catppuccin",
    url = "https://github.com/catppuccin/nvim"
  },
  ["cmp-buffer"] = {
    loaded = true,
    path = "/Users/hankpeeples/.local/share/lunarvim/site/pack/packer/start/cmp-buffer",
    url = "https://github.com/hrsh7th/cmp-buffer"
  },
  ["cmp-nvim-lsp"] = {
    loaded = true,
    path = "/Users/hankpeeples/.local/share/lunarvim/site/pack/packer/start/cmp-nvim-lsp",
    url = "https://github.com/hrsh7th/cmp-nvim-lsp"
  },
  ["cmp-path"] = {
    loaded = true,
    path = "/Users/hankpeeples/.local/share/lunarvim/site/pack/packer/start/cmp-path",
    url = "https://github.com/hrsh7th/cmp-path"
  },
  cmp_luasnip = {
    loaded = true,
    path = "/Users/hankpeeples/.local/share/lunarvim/site/pack/packer/start/cmp_luasnip",
    url = "https://github.com/saadparwaiz1/cmp_luasnip"
  },
  ["fidget.nvim"] = {
    config = { "\27LJ\2\nU\0\0\4\0\6\0\t6\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\4\0005\3\3\0=\3\5\2B\0\2\1K\0\1\0\vwindow\1\0\0\1\0\1\nblend\3\0\nsetup\vfidget\frequire\0" },
    loaded = true,
    path = "/Users/hankpeeples/.local/share/lunarvim/site/pack/packer/start/fidget.nvim",
    url = "https://github.com/j-hui/fidget.nvim"
  },
  ["friendly-snippets"] = {
    loaded = true,
    path = "/Users/hankpeeples/.local/share/lunarvim/site/pack/packer/start/friendly-snippets",
    url = "https://github.com/rafamadriz/friendly-snippets"
  },
  ["gitsigns.nvim"] = {
    config = { "\27LJ\2\n@\0\0\3\0\3\0\0066\0\0\0'\2\1\0B\0\2\0029\0\2\0B\0\1\1K\0\1\0\nsetup\23lvim.core.gitsigns\frequire\0" },
    loaded = false,
    needs_bufread = false,
    only_cond = false,
    path = "/Users/hankpeeples/.local/share/lunarvim/site/pack/packer/opt/gitsigns.nvim",
    url = "https://github.com/lewis6991/gitsigns.nvim"
  },
  ["indent-blankline.nvim"] = {
    config = { "\27LJ\2\nC\0\0\3\0\3\0\0066\0\0\0'\2\1\0B\0\2\0029\0\2\0B\0\1\1K\0\1\0\nsetup\26lvim.core.indentlines\frequire\0" },
    loaded = true,
    path = "/Users/hankpeeples/.local/share/lunarvim/site/pack/packer/start/indent-blankline.nvim",
    url = "https://github.com/lukas-reineke/indent-blankline.nvim"
  },
  ["leap.nvim"] = {
    config = { "\27LJ\2\nñ\3\0\0\5\0\17\0\0216\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\3\0005\3\4\0=\3\5\0024\3\0\0=\3\6\0025\3\a\0=\3\b\0025\3\t\0=\3\n\0025\3\v\0005\4\f\0=\4\r\0035\4\14\0=\4\15\3=\3\16\2B\0\2\1K\0\1\0\17special_keys\16prev_target\1\3\0\0\n<tab>\6,\16next_target\1\3\0\0\f<enter>\6;\1\0\6\15prev_group\n<tab>\18repeat_search\f<enter>\26next_phase_one_target\f<enter>\17multi_revert\16<backspace>\15next_group\f<space>\17multi_accept\f<enter>\vlabels\1\6\0\0\6s\6f\6n\6j\6k\16safe_labels\1\6\0\0\6s\6f\6n\6u\6t\21substitute_chars\24equivalence_classes\1\2\0\0\t \t\r\n\1\0\3&max_highlighted_traversal_targets\3\n\19case_sensitive\1*highlight_unlabeled_phase_one_targets\1\nsetup\tleap\frequire\0" },
    loaded = true,
    path = "/Users/hankpeeples/.local/share/lunarvim/site/pack/packer/start/leap.nvim",
    url = "https://github.com/ggandor/leap.nvim"
  },
  ["lir.nvim"] = {
    config = { "\27LJ\2\n;\0\0\3\0\3\0\0066\0\0\0'\2\1\0B\0\2\0029\0\2\0B\0\1\1K\0\1\0\nsetup\18lvim.core.lir\frequire\0" },
    loaded = true,
    path = "/Users/hankpeeples/.local/share/lunarvim/site/pack/packer/start/lir.nvim",
    url = "https://github.com/christianchiarulli/lir.nvim"
  },
  ["lualine.nvim"] = {
    config = { "\27LJ\2\n?\0\0\3\0\3\0\0066\0\0\0'\2\1\0B\0\2\0029\0\2\0B\0\1\1K\0\1\0\nsetup\22lvim.core.lualine\frequire\0" },
    loaded = true,
    path = "/Users/hankpeeples/.local/share/lunarvim/site/pack/packer/start/lualine.nvim",
    url = "https://github.com/nvim-lualine/lualine.nvim"
  },
  ["mason-lspconfig.nvim"] = {
    loaded = true,
    path = "/Users/hankpeeples/.local/share/lunarvim/site/pack/packer/start/mason-lspconfig.nvim",
    url = "https://github.com/williamboman/mason-lspconfig.nvim"
  },
  ["mason.nvim"] = {
    config = { "\27LJ\2\n=\0\0\3\0\3\0\0066\0\0\0'\2\1\0B\0\2\0029\0\2\0B\0\1\1K\0\1\0\nsetup\20lvim.core.mason\frequire\0" },
    loaded = true,
    path = "/Users/hankpeeples/.local/share/lunarvim/site/pack/packer/start/mason.nvim",
    url = "https://github.com/williamboman/mason.nvim"
  },
  ["neodev.nvim"] = {
    loaded = false,
    needs_bufread = false,
    only_cond = false,
    path = "/Users/hankpeeples/.local/share/lunarvim/site/pack/packer/opt/neodev.nvim",
    url = "https://github.com/folke/neodev.nvim"
  },
  neon = {
    loaded = true,
    path = "/Users/hankpeeples/.local/share/lunarvim/site/pack/packer/start/neon",
    url = "https://github.com/rafamadriz/neon"
  },
  ["nlsp-settings.nvim"] = {
    loaded = true,
    path = "/Users/hankpeeples/.local/share/lunarvim/site/pack/packer/start/nlsp-settings.nvim",
    url = "https://github.com/tamago324/nlsp-settings.nvim"
  },
  ["null-ls.nvim"] = {
    loaded = true,
    path = "/Users/hankpeeples/.local/share/lunarvim/site/pack/packer/start/null-ls.nvim",
    url = "https://github.com/jose-elias-alvarez/null-ls.nvim"
  },
  ["nvim-autopairs"] = {
    config = { "\27LJ\2\nA\0\0\3\0\3\0\0066\0\0\0'\2\1\0B\0\2\0029\0\2\0B\0\1\1K\0\1\0\nsetup\24lvim.core.autopairs\frequire\0" },
    loaded = true,
    path = "/Users/hankpeeples/.local/share/lunarvim/site/pack/packer/start/nvim-autopairs",
    url = "https://github.com/windwp/nvim-autopairs"
  },
  ["nvim-cmp"] = {
    config = { "\27LJ\2\n`\0\0\3\0\6\0\v6\0\0\0009\0\1\0009\0\2\0\15\0\0\0X\1\5€6\0\3\0'\2\4\0B\0\2\0029\0\5\0B\0\1\1K\0\1\0\nsetup\18lvim.core.cmp\frequire\bcmp\fbuiltin\tlvim\0" },
    loaded = true,
    path = "/Users/hankpeeples/.local/share/lunarvim/site/pack/packer/start/nvim-cmp",
    url = "https://github.com/hrsh7th/nvim-cmp"
  },
  ["nvim-colorizer.lua"] = {
    config = { "\27LJ\2\n7\0\0\3\0\3\0\0066\0\0\0'\2\1\0B\0\2\0029\0\2\0B\0\1\1K\0\1\0\nsetup\14colorizer\frequire\0" },
    loaded = true,
    path = "/Users/hankpeeples/.local/share/lunarvim/site/pack/packer/start/nvim-colorizer.lua",
    url = "https://github.com/norcalli/nvim-colorizer.lua"
  },
  ["nvim-dap"] = {
    config = { "\27LJ\2\n;\0\0\3\0\3\0\0066\0\0\0'\2\1\0B\0\2\0029\0\2\0B\0\1\1K\0\1\0\nsetup\18lvim.core.dap\frequire\0" },
    loaded = true,
    path = "/Users/hankpeeples/.local/share/lunarvim/site/pack/packer/start/nvim-dap",
    url = "https://github.com/mfussenegger/nvim-dap"
  },
  ["nvim-dap-ui"] = {
    config = { "\27LJ\2\n>\0\0\3\0\3\0\0066\0\0\0'\2\1\0B\0\2\0029\0\2\0B\0\1\1K\0\1\0\rsetup_ui\18lvim.core.dap\frequire\0" },
    loaded = true,
    path = "/Users/hankpeeples/.local/share/lunarvim/site/pack/packer/start/nvim-dap-ui",
    url = "https://github.com/rcarriga/nvim-dap-ui"
  },
  ["nvim-lspconfig"] = {
    loaded = true,
    path = "/Users/hankpeeples/.local/share/lunarvim/site/pack/packer/start/nvim-lspconfig",
    url = "https://github.com/neovim/nvim-lspconfig"
  },
  ["nvim-navic"] = {
    config = { "\27LJ\2\nC\0\0\3\0\3\0\0066\0\0\0'\2\1\0B\0\2\0029\0\2\0B\0\1\1K\0\1\0\nsetup\26lvim.core.breadcrumbs\frequire\0" },
    loaded = true,
    path = "/Users/hankpeeples/.local/share/lunarvim/site/pack/packer/start/nvim-navic",
    url = "https://github.com/SmiteshP/nvim-navic"
  },
  ["nvim-tree.lua"] = {
    config = { "\27LJ\2\n@\0\0\3\0\3\0\0066\0\0\0'\2\1\0B\0\2\0029\0\2\0B\0\1\1K\0\1\0\nsetup\23lvim.core.nvimtree\frequire\0" },
    loaded = true,
    path = "/Users/hankpeeples/.local/share/lunarvim/site/pack/packer/start/nvim-tree.lua",
    url = "https://github.com/kyazdani42/nvim-tree.lua"
  },
  ["nvim-treesitter"] = {
    config = { "\27LJ\2\nB\0\0\3\0\3\0\0066\0\0\0'\2\1\0B\0\2\0029\0\2\0B\0\1\1K\0\1\0\nsetup\25lvim.core.treesitter\frequire\0" },
    loaded = true,
    path = "/Users/hankpeeples/.local/share/lunarvim/site/pack/packer/start/nvim-treesitter",
    url = "https://github.com/nvim-treesitter/nvim-treesitter"
  },
  ["nvim-ts-context-commentstring"] = {
    loaded = false,
    needs_bufread = false,
    only_cond = false,
    path = "/Users/hankpeeples/.local/share/lunarvim/site/pack/packer/opt/nvim-ts-context-commentstring",
    url = "https://github.com/JoosepAlviste/nvim-ts-context-commentstring"
  },
  ["nvim-web-devicons"] = {
    loaded = true,
    path = "/Users/hankpeeples/.local/share/lunarvim/site/pack/packer/start/nvim-web-devicons",
    url = "https://github.com/kyazdani42/nvim-web-devicons"
  },
  ["packer.nvim"] = {
    loaded = true,
    path = "/Users/hankpeeples/.local/share/lunarvim/site/pack/packer/start/packer.nvim",
    url = "https://github.com/wbthomason/packer.nvim"
  },
  ["plenary.nvim"] = {
    loaded = true,
    path = "/Users/hankpeeples/.local/share/lunarvim/site/pack/packer/start/plenary.nvim",
    url = "https://github.com/nvim-lua/plenary.nvim"
  },
  ["popup.nvim"] = {
    loaded = true,
    path = "/Users/hankpeeples/.local/share/lunarvim/site/pack/packer/start/popup.nvim",
    url = "https://github.com/nvim-lua/popup.nvim"
  },
  ["project.nvim"] = {
    config = { "\27LJ\2\n?\0\0\3\0\3\0\0066\0\0\0'\2\1\0B\0\2\0029\0\2\0B\0\1\1K\0\1\0\nsetup\22lvim.core.project\frequire\0" },
    loaded = true,
    path = "/Users/hankpeeples/.local/share/lunarvim/site/pack/packer/start/project.nvim",
    url = "https://github.com/ahmedkhalf/project.nvim"
  },
  rainbow = {
    loaded = true,
    path = "/Users/hankpeeples/.local/share/lunarvim/site/pack/packer/start/rainbow",
    url = "https://github.com/luochen1990/rainbow"
  },
  ["rust-tools.nvim"] = {
    config = { "\27LJ\2\nƒ\2\0\2\t\0\15\0\0316\2\0\0'\4\1\0B\2\2\0029\2\2\2\18\4\0\0\18\5\1\0B\2\3\0016\2\0\0'\4\3\0B\2\2\0026\3\4\0009\3\5\0039\3\6\3'\5\a\0'\6\b\0009\a\t\0029\a\t\a5\b\n\0=\1\v\bB\3\5\0016\3\4\0009\3\5\0039\3\6\3'\5\a\0'\6\f\0009\a\r\0029\a\r\a5\b\14\0=\1\v\bB\3\5\1K\0\1\0\1\0\0\22code_action_group\15<leader>lA\vbuffer\1\0\0\18hover_actions\14<C-space>\6n\bset\vkeymap\bvim\15rust-tools\21common_on_attach\rlvim.lsp\frequire˜\2\1\0\a\0\r\0\0186\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\t\0005\3\5\0006\4\0\0'\6\3\0B\4\2\0029\4\4\4=\4\6\0033\4\a\0=\4\b\3=\3\n\0025\3\v\0=\3\f\2B\0\2\1K\0\1\0\16inlay_hints\1\0\4\24right_align_padding\3\a\16right_align\2\22only_current_line\2\30only_current_line_autocmd\15CursorHold\vserver\1\0\1\17autoSetHints\2\14on_attach\0\fon_init\1\0\0\19common_on_init\rlvim.lsp\nsetup\15rust-tools\frequire\0" },
    loaded = true,
    path = "/Users/hankpeeples/.local/share/lunarvim/site/pack/packer/start/rust-tools.nvim",
    url = "https://github.com/simrat39/rust-tools.nvim"
  },
  ["schemastore.nvim"] = {
    loaded = true,
    path = "/Users/hankpeeples/.local/share/lunarvim/site/pack/packer/start/schemastore.nvim",
    url = "https://github.com/b0o/schemastore.nvim"
  },
  ["sonokai-fork"] = {
    loaded = true,
    path = "/Users/hankpeeples/.local/share/lunarvim/site/pack/packer/start/sonokai-fork",
    url = "https://github.com/hankpeeples/sonokai-fork"
  },
  ["structlog.nvim"] = {
    loaded = true,
    path = "/Users/hankpeeples/.local/share/lunarvim/site/pack/packer/start/structlog.nvim",
    url = "https://github.com/Tastyep/structlog.nvim"
  },
  ["telescope-fzf-native.nvim"] = {
    loaded = true,
    path = "/Users/hankpeeples/.local/share/lunarvim/site/pack/packer/start/telescope-fzf-native.nvim",
    url = "https://github.com/nvim-telescope/telescope-fzf-native.nvim"
  },
  ["telescope.nvim"] = {
    config = { "\27LJ\2\nA\0\0\3\0\3\0\0066\0\0\0'\2\1\0B\0\2\0029\0\2\0B\0\1\1K\0\1\0\nsetup\24lvim.core.telescope\frequire\0" },
    loaded = true,
    path = "/Users/hankpeeples/.local/share/lunarvim/site/pack/packer/start/telescope.nvim",
    url = "https://github.com/nvim-telescope/telescope.nvim"
  },
  ["toggleterm.nvim"] = {
    config = { "\27LJ\2\n@\0\0\3\0\3\0\0066\0\0\0'\2\1\0B\0\2\0029\0\2\0B\0\1\1K\0\1\0\nsetup\23lvim.core.terminal\frequire\0" },
    loaded = false,
    needs_bufread = false,
    only_cond = false,
    path = "/Users/hankpeeples/.local/share/lunarvim/site/pack/packer/opt/toggleterm.nvim",
    url = "https://github.com/akinsho/toggleterm.nvim"
  },
  ["tokyonight.nvim"] = {
    loaded = true,
    path = "/Users/hankpeeples/.local/share/lunarvim/site/pack/packer/start/tokyonight.nvim",
    url = "https://github.com/folke/tokyonight.nvim"
  },
  ["trouble.nvim"] = {
    config = { "\27LJ\2\n¯\4\0\0\5\0\22\0\0256\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\3\0005\3\4\0005\4\5\0=\4\6\0035\4\a\0=\4\b\0035\4\t\0=\4\n\0035\4\v\0=\4\f\0035\4\r\0=\4\14\0035\4\15\0=\4\16\0035\4\17\0=\4\18\0035\4\19\0=\4\20\3=\3\21\2B\0\2\1K\0\1\0\16action_keys\16toggle_fold\1\3\0\0\azA\aza\15open_folds\1\3\0\0\azR\azr\16close_folds\1\3\0\0\azM\azm\15jump_close\1\2\0\0\6o\ropen_tab\1\2\0\0\n<c-t>\16open_vsplit\1\2\0\0\n<c-v>\15open_split\1\2\0\0\n<c-x>\tjump\1\3\0\0\t<cr>\n<tab>\1\0\t\tnext\6j\19toggle_preview\6P\rprevious\6k\nhover\6K\vcancel\n<esc>\fpreview\6p\frefresh\6r\nclose\6q\16toggle_mode\6m\1\0\v\nicons\2\rposition\vbottom\14auto_open\1\vheight\3\n\nwidth\0032\tmode\25document_diagnostics\14auto_fold\1\17indent_lines\2\17auto_preview\2\25use_diagnostic_signs\2\15auto_close\2\nsetup\ftrouble\frequire\0" },
    loaded = true,
    path = "/Users/hankpeeples/.local/share/lunarvim/site/pack/packer/start/trouble.nvim",
    url = "https://github.com/folke/trouble.nvim"
  },
  undotree = {
    loaded = true,
    path = "/Users/hankpeeples/.local/share/lunarvim/site/pack/packer/start/undotree",
    url = "https://github.com/mbbill/undotree"
  },
  ["vim-devicons"] = {
    loaded = true,
    path = "/Users/hankpeeples/.local/share/lunarvim/site/pack/packer/start/vim-devicons",
    url = "https://github.com/ryanoasis/vim-devicons"
  },
  ["vim-illuminate"] = {
    config = { "\27LJ\2\nB\0\0\3\0\3\0\0066\0\0\0'\2\1\0B\0\2\0029\0\2\0B\0\1\1K\0\1\0\nsetup\25lvim.core.illuminate\frequire\0" },
    loaded = true,
    path = "/Users/hankpeeples/.local/share/lunarvim/site/pack/packer/start/vim-illuminate",
    url = "https://github.com/RRethy/vim-illuminate"
  },
  ["vim-polyglot"] = {
    loaded = true,
    path = "/Users/hankpeeples/.local/share/lunarvim/site/pack/packer/start/vim-polyglot",
    url = "https://github.com/sheerun/vim-polyglot"
  },
  ["vim-wakatime"] = {
    loaded = true,
    path = "/Users/hankpeeples/.local/share/lunarvim/site/pack/packer/start/vim-wakatime",
    url = "https://github.com/wakatime/vim-wakatime"
  },
  ["which-key.nvim"] = {
    config = { "\27LJ\2\nA\0\0\3\0\3\0\0066\0\0\0'\2\1\0B\0\2\0029\0\2\0B\0\1\1K\0\1\0\nsetup\24lvim.core.which-key\frequire\0" },
    loaded = false,
    needs_bufread = false,
    only_cond = false,
    path = "/Users/hankpeeples/.local/share/lunarvim/site/pack/packer/opt/which-key.nvim",
    url = "https://github.com/folke/which-key.nvim"
  }
}

time([[Defining packer_plugins]], false)
local module_lazy_loads = {
  ["^neodev"] = "neodev.nvim"
}
local lazy_load_called = {['packer.load'] = true}
local function lazy_load_module(module_name)
  local to_load = {}
  if lazy_load_called[module_name] then return nil end
  lazy_load_called[module_name] = true
  for module_pat, plugin_name in pairs(module_lazy_loads) do
    if not _G.packer_plugins[plugin_name].loaded and string.match(module_name, module_pat) then
      to_load[#to_load + 1] = plugin_name
    end
  end

  if #to_load > 0 then
    require('packer.load')(to_load, {module = module_name}, _G.packer_plugins)
    local loaded_mod = package.loaded[module_name]
    if loaded_mod then
      return function(modname) return loaded_mod end
    end
  end
end

if not vim.g.packer_custom_loader_enabled then
  table.insert(package.loaders, 1, lazy_load_module)
  vim.g.packer_custom_loader_enabled = true
end

-- Config for: nvim-tree.lua
time([[Config for nvim-tree.lua]], true)
try_loadstring("\27LJ\2\n@\0\0\3\0\3\0\0066\0\0\0'\2\1\0B\0\2\0029\0\2\0B\0\1\1K\0\1\0\nsetup\23lvim.core.nvimtree\frequire\0", "config", "nvim-tree.lua")
time([[Config for nvim-tree.lua]], false)
-- Config for: lir.nvim
time([[Config for lir.nvim]], true)
try_loadstring("\27LJ\2\n;\0\0\3\0\3\0\0066\0\0\0'\2\1\0B\0\2\0029\0\2\0B\0\1\1K\0\1\0\nsetup\18lvim.core.lir\frequire\0", "config", "lir.nvim")
time([[Config for lir.nvim]], false)
-- Config for: trouble.nvim
time([[Config for trouble.nvim]], true)
try_loadstring("\27LJ\2\n¯\4\0\0\5\0\22\0\0256\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\3\0005\3\4\0005\4\5\0=\4\6\0035\4\a\0=\4\b\0035\4\t\0=\4\n\0035\4\v\0=\4\f\0035\4\r\0=\4\14\0035\4\15\0=\4\16\0035\4\17\0=\4\18\0035\4\19\0=\4\20\3=\3\21\2B\0\2\1K\0\1\0\16action_keys\16toggle_fold\1\3\0\0\azA\aza\15open_folds\1\3\0\0\azR\azr\16close_folds\1\3\0\0\azM\azm\15jump_close\1\2\0\0\6o\ropen_tab\1\2\0\0\n<c-t>\16open_vsplit\1\2\0\0\n<c-v>\15open_split\1\2\0\0\n<c-x>\tjump\1\3\0\0\t<cr>\n<tab>\1\0\t\tnext\6j\19toggle_preview\6P\rprevious\6k\nhover\6K\vcancel\n<esc>\fpreview\6p\frefresh\6r\nclose\6q\16toggle_mode\6m\1\0\v\nicons\2\rposition\vbottom\14auto_open\1\vheight\3\n\nwidth\0032\tmode\25document_diagnostics\14auto_fold\1\17indent_lines\2\17auto_preview\2\25use_diagnostic_signs\2\15auto_close\2\nsetup\ftrouble\frequire\0", "config", "trouble.nvim")
time([[Config for trouble.nvim]], false)
-- Config for: leap.nvim
time([[Config for leap.nvim]], true)
try_loadstring("\27LJ\2\nñ\3\0\0\5\0\17\0\0216\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\3\0005\3\4\0=\3\5\0024\3\0\0=\3\6\0025\3\a\0=\3\b\0025\3\t\0=\3\n\0025\3\v\0005\4\f\0=\4\r\0035\4\14\0=\4\15\3=\3\16\2B\0\2\1K\0\1\0\17special_keys\16prev_target\1\3\0\0\n<tab>\6,\16next_target\1\3\0\0\f<enter>\6;\1\0\6\15prev_group\n<tab>\18repeat_search\f<enter>\26next_phase_one_target\f<enter>\17multi_revert\16<backspace>\15next_group\f<space>\17multi_accept\f<enter>\vlabels\1\6\0\0\6s\6f\6n\6j\6k\16safe_labels\1\6\0\0\6s\6f\6n\6u\6t\21substitute_chars\24equivalence_classes\1\2\0\0\t \t\r\n\1\0\3&max_highlighted_traversal_targets\3\n\19case_sensitive\1*highlight_unlabeled_phase_one_targets\1\nsetup\tleap\frequire\0", "config", "leap.nvim")
time([[Config for leap.nvim]], false)
-- Config for: nvim-dap
time([[Config for nvim-dap]], true)
try_loadstring("\27LJ\2\n;\0\0\3\0\3\0\0066\0\0\0'\2\1\0B\0\2\0029\0\2\0B\0\1\1K\0\1\0\nsetup\18lvim.core.dap\frequire\0", "config", "nvim-dap")
time([[Config for nvim-dap]], false)
-- Config for: project.nvim
time([[Config for project.nvim]], true)
try_loadstring("\27LJ\2\n?\0\0\3\0\3\0\0066\0\0\0'\2\1\0B\0\2\0029\0\2\0B\0\1\1K\0\1\0\nsetup\22lvim.core.project\frequire\0", "config", "project.nvim")
time([[Config for project.nvim]], false)
-- Config for: LuaSnip
time([[Config for LuaSnip]], true)
try_loadstring("\27LJ\2\nñ\3\0\0\v\0\23\00166\0\0\0'\2\1\0B\0\2\0024\1\0\0006\2\2\0009\2\3\0029\2\4\0029\2\5\0029\2\6\2\15\0\2\0X\3\f€\21\2\1\0\22\2\0\0029\3\a\0006\5\b\0B\5\1\2'\6\t\0'\a\n\0'\b\v\0'\t\f\0'\n\r\0B\3\a\2<\3\2\0019\2\a\0006\4\14\0B\4\1\2'\5\15\0B\2\3\0029\3\16\0\18\5\2\0B\3\2\2\15\0\3\0X\4\3€\21\3\1\0\22\3\0\3<\2\3\0016\3\0\0'\5\17\0B\3\2\0029\3\18\3B\3\1\0016\3\0\0'\5\19\0B\3\2\0029\3\18\0035\5\20\0=\1\21\5B\3\2\0016\3\0\0'\5\22\0B\3\2\0029\3\18\3B\3\1\1K\0\1\0\"luasnip.loaders.from_snipmate\npaths\1\0\0 luasnip.loaders.from_vscode\14lazy_load\29luasnip.loaders.from_lua\17is_directory\rsnippets\19get_config_dir\22friendly-snippets\nstart\vpacker\tpack\tsite\20get_runtime_dir\15join_paths\22friendly_snippets\fsources\fluasnip\fbuiltin\tlvim\15lvim.utils\frequire\2\0", "config", "LuaSnip")
time([[Config for LuaSnip]], false)
-- Config for: vim-illuminate
time([[Config for vim-illuminate]], true)
try_loadstring("\27LJ\2\nB\0\0\3\0\3\0\0066\0\0\0'\2\1\0B\0\2\0029\0\2\0B\0\1\1K\0\1\0\nsetup\25lvim.core.illuminate\frequire\0", "config", "vim-illuminate")
time([[Config for vim-illuminate]], false)
-- Config for: nvim-cmp
time([[Config for nvim-cmp]], true)
try_loadstring("\27LJ\2\n`\0\0\3\0\6\0\v6\0\0\0009\0\1\0009\0\2\0\15\0\0\0X\1\5€6\0\3\0'\2\4\0B\0\2\0029\0\5\0B\0\1\1K\0\1\0\nsetup\18lvim.core.cmp\frequire\bcmp\fbuiltin\tlvim\0", "config", "nvim-cmp")
time([[Config for nvim-cmp]], false)
-- Config for: nvim-colorizer.lua
time([[Config for nvim-colorizer.lua]], true)
try_loadstring("\27LJ\2\n7\0\0\3\0\3\0\0066\0\0\0'\2\1\0B\0\2\0029\0\2\0B\0\1\1K\0\1\0\nsetup\14colorizer\frequire\0", "config", "nvim-colorizer.lua")
time([[Config for nvim-colorizer.lua]], false)
-- Config for: nvim-navic
time([[Config for nvim-navic]], true)
try_loadstring("\27LJ\2\nC\0\0\3\0\3\0\0066\0\0\0'\2\1\0B\0\2\0029\0\2\0B\0\1\1K\0\1\0\nsetup\26lvim.core.breadcrumbs\frequire\0", "config", "nvim-navic")
time([[Config for nvim-navic]], false)
-- Config for: telescope.nvim
time([[Config for telescope.nvim]], true)
try_loadstring("\27LJ\2\nA\0\0\3\0\3\0\0066\0\0\0'\2\1\0B\0\2\0029\0\2\0B\0\1\1K\0\1\0\nsetup\24lvim.core.telescope\frequire\0", "config", "telescope.nvim")
time([[Config for telescope.nvim]], false)
-- Config for: lualine.nvim
time([[Config for lualine.nvim]], true)
try_loadstring("\27LJ\2\n?\0\0\3\0\3\0\0066\0\0\0'\2\1\0B\0\2\0029\0\2\0B\0\1\1K\0\1\0\nsetup\22lvim.core.lualine\frequire\0", "config", "lualine.nvim")
time([[Config for lualine.nvim]], false)
-- Config for: nvim-dap-ui
time([[Config for nvim-dap-ui]], true)
try_loadstring("\27LJ\2\n>\0\0\3\0\3\0\0066\0\0\0'\2\1\0B\0\2\0029\0\2\0B\0\1\1K\0\1\0\rsetup_ui\18lvim.core.dap\frequire\0", "config", "nvim-dap-ui")
time([[Config for nvim-dap-ui]], false)
-- Config for: rust-tools.nvim
time([[Config for rust-tools.nvim]], true)
try_loadstring("\27LJ\2\nƒ\2\0\2\t\0\15\0\0316\2\0\0'\4\1\0B\2\2\0029\2\2\2\18\4\0\0\18\5\1\0B\2\3\0016\2\0\0'\4\3\0B\2\2\0026\3\4\0009\3\5\0039\3\6\3'\5\a\0'\6\b\0009\a\t\0029\a\t\a5\b\n\0=\1\v\bB\3\5\0016\3\4\0009\3\5\0039\3\6\3'\5\a\0'\6\f\0009\a\r\0029\a\r\a5\b\14\0=\1\v\bB\3\5\1K\0\1\0\1\0\0\22code_action_group\15<leader>lA\vbuffer\1\0\0\18hover_actions\14<C-space>\6n\bset\vkeymap\bvim\15rust-tools\21common_on_attach\rlvim.lsp\frequire˜\2\1\0\a\0\r\0\0186\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\t\0005\3\5\0006\4\0\0'\6\3\0B\4\2\0029\4\4\4=\4\6\0033\4\a\0=\4\b\3=\3\n\0025\3\v\0=\3\f\2B\0\2\1K\0\1\0\16inlay_hints\1\0\4\24right_align_padding\3\a\16right_align\2\22only_current_line\2\30only_current_line_autocmd\15CursorHold\vserver\1\0\1\17autoSetHints\2\14on_attach\0\fon_init\1\0\0\19common_on_init\rlvim.lsp\nsetup\15rust-tools\frequire\0", "config", "rust-tools.nvim")
time([[Config for rust-tools.nvim]], false)
-- Config for: fidget.nvim
time([[Config for fidget.nvim]], true)
try_loadstring("\27LJ\2\nU\0\0\4\0\6\0\t6\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\4\0005\3\3\0=\3\5\2B\0\2\1K\0\1\0\vwindow\1\0\0\1\0\1\nblend\3\0\nsetup\vfidget\frequire\0", "config", "fidget.nvim")
time([[Config for fidget.nvim]], false)
-- Config for: nvim-autopairs
time([[Config for nvim-autopairs]], true)
try_loadstring("\27LJ\2\nA\0\0\3\0\3\0\0066\0\0\0'\2\1\0B\0\2\0029\0\2\0B\0\1\1K\0\1\0\nsetup\24lvim.core.autopairs\frequire\0", "config", "nvim-autopairs")
time([[Config for nvim-autopairs]], false)
-- Config for: catppuccin
time([[Config for catppuccin]], true)
try_loadstring("\27LJ\2\n¨\15\0\1\4\0{\0Ø\0015\1\3\0005\2\1\0009\3\0\0=\3\2\2=\2\4\0015\2\6\0009\3\5\0=\3\a\0029\3\b\0=\3\2\0025\3\t\0=\3\n\2=\2\v\0015\2\f\0009\3\b\0=\3\a\0029\3\5\0=\3\2\2=\2\r\0015\2\15\0009\3\14\0=\3\a\2=\2\16\0015\2\17\0009\3\14\0=\3\a\2=\2\18\0015\2\19\0009\3\14\0=\3\a\2=\2\20\0015\2\22\0009\3\21\0=\3\2\0029\3\14\0=\3\a\2=\2\23\0015\2\24\0009\3\21\0=\3\2\2=\2\25\0015\2\26\0009\3\21\0=\3\2\2=\2\27\0015\2\28\0009\3\21\0=\3\2\2=\2\29\0015\2\30\0009\3\21\0=\3\2\2=\2\31\0015\2 \0009\3\21\0=\3!\2=\2\"\0015\2#\0009\3\14\0=\3\a\0029\3$\0=\3\2\2=\2%\0015\2'\0009\3&\0=\3\2\0025\3(\0=\3\n\2=\2)\0015\2*\0009\3\21\0=\3\2\2=\2+\0015\2-\0009\3,\0=\3\2\2=\2.\0015\0020\0009\3/\0=\3\2\2=\0021\0015\0023\0009\0032\0=\3\2\2=\0024\0015\0025\0009\0032\0=\3\2\2=\0026\0015\0028\0009\0037\0=\3\2\2=\0029\0015\2;\0009\3:\0=\3\2\2=\2<\0015\2>\0009\3=\0=\3\2\2=\2?\0015\2@\0009\3:\0=\3\2\2=\2A\0015\2C\0009\3B\0=\3\2\0025\3D\0=\3\n\2=\2E\0015\2F\0009\3B\0=\3\2\0024\3\0\0=\3\n\2=\2G\0015\2H\0009\3\21\0=\3\2\2=\2I\0015\2J\0009\0037\0=\3\2\2=\2K\0015\2L\0009\3B\0=\3\2\2=\2M\0015\2N\0009\3\b\0=\3\2\0024\3\0\0=\3\n\2=\2O\0015\2P\0009\3\21\0=\3\2\0024\3\0\0=\3\n\2=\2Q\0015\2R\0009\3/\0=\3\2\2=\2S\0015\2U\0009\3T\0=\3\2\2=\2V\0015\2X\0009\3W\0=\3\2\2=\2Y\0015\2[\0009\3Z\0=\3\2\0025\3\\\0=\3\n\2=\2]\0015\2^\0009\3=\0=\3\2\2=\2_\0015\2`\0009\0037\0=\3\2\2=\2a\0015\2b\0009\3W\0=\3\2\2=\2c\0015\2d\0009\3B\0=\3\2\0025\3e\0=\3\n\2=\2f\0015\2g\0009\3,\0=\3\2\0025\3h\0=\3\n\2=\2i\0015\2j\0009\3:\0=\3\2\2=\2k\0015\2m\0009\3l\0=\3\2\2=\2n\0015\2o\0009\3/\0=\3\2\2=\2p\0015\2q\0009\3:\0=\3\2\0025\3r\0=\3\n\2=\2s\0015\2t\0009\3:\0=\3\2\2=\2u\0015\2v\0009\3,\0=\3\2\0025\3w\0=\3\n\2=\2x\0015\2y\0009\3W\0=\3\2\2=\2z\1L\1\2\0\18@property.cpp\1\0\0\18@property.css\1\2\0\0\vitalic\1\0\0\14@type.css\1\0\0\25@property.typescript\1\2\0\0\vitalic\1\0\0\19@constant.java\1\0\0\21@constructor.lua\1\0\0\rflamingo\15@field.lua\1\0\0\20@parameter.bash\1\2\0\0\vitalic\1\0\0\27@function.builtin.bash\1\2\0\0\vitalic\1\0\0\n@text\1\0\0\19@tag.delimiter\1\0\0\t@tag\1\0\0\19@tag.attribute\1\2\0\0\vitalic\1\0\0\nmauve\14@variable\1\0\0\ttext\25@punctuation.bracket\1\0\0\roverlay2\27@punctuation.delimiter\1\0\0\15@namespace\1\0\0\20@keyword.return\1\0\0\r@keyword\1\0\0\22@keyword.function\1\0\0\15@parameter\1\0\0\20@function.macro\1\0\0\22@variable.builtin\1\2\0\0\vitalic\1\0\0\bred\22@constant.builtin\1\0\0\15@exception\1\0\0\npeach\17@constructor\1\0\0\rlavender\25@punctuation.special\1\0\0\vmaroon\22@keyword.operator\1\0\0\14@operator\1\0\0\bsky\r@include\1\0\0\tteal\14@property\1\0\0\vyellow\v@field\1\0\0\16FidgetTitle\1\2\0\0\tbold\1\0\0\tblue\15FidgetTask\rsurface2\1\0\0 LspDiagnosticsUnderlineHint\asp\1\0\0\"LspDiagnosticsVirtualTextHint\1\0\0\23LspDiagnosticsHint\1\0\0\30LspDiagnosticsDefaultHint\1\0\0\19DiagnosticHint\1\0\0\30DiagnosticVirtualTextHint\1\0\0\14rosewater\30DiagnosticVirtualTextInfo\1\0\0\30DiagnosticVirtualTextWarn\1\0\0\31DiagnosticVirtualTextError\1\0\0\tnone\14IncSearch\1\0\0\vSearch\nstyle\1\2\0\0\tbold\tpink\abg\1\0\0\rsurface1\17CursorLineNr\1\0\0\afg\1\0\0\ngreen”\n\1\0\b\0006\0C6\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\3\0005\3\4\0=\3\5\0026\3\6\0009\3\a\0039\3\b\3'\5\t\0B\3\2\2'\4\n\0&\3\4\3=\3\v\0025\3\f\0=\3\r\0025\3\15\0005\4\14\0=\4\16\0035\4\17\0=\4\18\0034\4\0\0=\4\19\0035\4\20\0=\4\21\0035\4\22\0=\4\23\0034\4\0\0=\4\24\0034\4\0\0=\4\25\0034\4\0\0=\4\26\0034\4\0\0=\4\27\0034\4\0\0=\4\28\0034\4\0\0=\4\29\0035\4\30\0=\4\31\3=\3 \0025\3\"\0005\4!\0=\4#\0035\4%\0003\5$\0=\5#\4=\4&\0035\4'\0005\5(\0005\6*\0005\a)\0=\a+\0065\a,\0=\a-\0065\a.\0=\a/\0065\a0\0=\a1\6=\0062\5=\0053\4=\0044\3=\0035\2B\0\2\1K\0\1\0\20color_overrides\17integrations\15native_lsp\15underlines\16information\1\2\0\0\14underline\rwarnings\1\2\0\0\14underline\nhints\1\2\0\0\14underline\verrors\1\0\0\1\2\0\0\14underline\1\0\1\fenabled\2\1\0\v\14telescope\2\vfidget\2\nmason\2\vnotify\2\14which_key\2\bcmp\2\16lsp_trouble\2\rgitsigns\2\rnvimtree\2\15treesitter\2\14gitgutter\2\24highlight_overrides\1\0\0\0\nmocha\1\0\0\1\0\22\tblue\f#96CDFB\ngreen\f#ABE9B3\14rosewater\f#F5E0DC\rsubtext0\f#A6ADC8\rsubtext1\f#BAC2DE\roverlay2\f#C3BAC6\rsurface1\f#575268\tpink\f#F5C2E7\nmauve\f#DDB6F2\npeach\f#F8BD96\roverlay1\f#988BA2\roverlay0\f#6E6C7E\rsurface2\f#6E6C7E\rflamingo\f#F2CDCD\rsurface0\f#302D41\bsky\f#89DCEB\vmaroon\f#E8A2AF\bred\f#F28FAD\rlavender\f#C9CBFF\ttext\f#D9E0EE\vyellow\f#FAE3B0\tteal\f#B5E8E0\vstyles\14operators\1\2\0\0\tbold\ntypes\15properties\rbooleans\fnumbers\14variables\fstrings\rkeywords\1\2\0\0\vitalic\14functions\1\2\0\0\tbold\nloops\17conditionals\1\2\0\0\tbold\rcomments\1\0\0\1\2\0\0\vitalic\17dim_inactive\1\0\3\15percentage\4³æÌ™\3³æŒþ\3\fenabled\1\nshade\tdark\17compile_path\16/catppuccin\ncache\fstdpath\afn\bvim\15background\1\0\2\tdark\nmocha\nlight\nlatte\1\0\3\27transparent_background\1\16term_colors\2\fflavour\nmocha\nsetup\15catppuccin\frequire\0", "config", "catppuccin")
time([[Config for catppuccin]], false)
-- Config for: alpha-nvim
time([[Config for alpha-nvim]], true)
try_loadstring("\27LJ\2\n=\0\0\3\0\3\0\0066\0\0\0'\2\1\0B\0\2\0029\0\2\0B\0\1\1K\0\1\0\nsetup\20lvim.core.alpha\frequire\0", "config", "alpha-nvim")
time([[Config for alpha-nvim]], false)
-- Config for: nvim-treesitter
time([[Config for nvim-treesitter]], true)
try_loadstring("\27LJ\2\nB\0\0\3\0\3\0\0066\0\0\0'\2\1\0B\0\2\0029\0\2\0B\0\1\1K\0\1\0\nsetup\25lvim.core.treesitter\frequire\0", "config", "nvim-treesitter")
time([[Config for nvim-treesitter]], false)
-- Config for: mason.nvim
time([[Config for mason.nvim]], true)
try_loadstring("\27LJ\2\n=\0\0\3\0\3\0\0066\0\0\0'\2\1\0B\0\2\0029\0\2\0B\0\1\1K\0\1\0\nsetup\20lvim.core.mason\frequire\0", "config", "mason.nvim")
time([[Config for mason.nvim]], false)
-- Config for: indent-blankline.nvim
time([[Config for indent-blankline.nvim]], true)
try_loadstring("\27LJ\2\nC\0\0\3\0\3\0\0066\0\0\0'\2\1\0B\0\2\0029\0\2\0B\0\1\1K\0\1\0\nsetup\26lvim.core.indentlines\frequire\0", "config", "indent-blankline.nvim")
time([[Config for indent-blankline.nvim]], false)
vim.cmd [[augroup packer_load_aucmds]]
vim.cmd [[au!]]
  -- Event lazy-loads
time([[Defining lazy-load event autocommands]], true)
vim.cmd [[au BufReadPost * ++once lua require("packer.load")({'nvim-ts-context-commentstring'}, { event = "BufReadPost *" }, _G.packer_plugins)]]
vim.cmd [[au BufWinEnter * ++once lua require("packer.load")({'which-key.nvim', 'bufferline.nvim', 'toggleterm.nvim'}, { event = "BufWinEnter *" }, _G.packer_plugins)]]
vim.cmd [[au BufRead * ++once lua require("packer.load")({'gitsigns.nvim', 'Comment.nvim'}, { event = "BufRead *" }, _G.packer_plugins)]]
time([[Defining lazy-load event autocommands]], false)
vim.cmd("augroup END")

_G._packer.inside_compile = false
if _G._packer.needs_bufread == true then
  vim.cmd("doautocmd BufRead")
end
_G._packer.needs_bufread = false

if should_profile then save_profiles() end

end)

if not no_errors then
  error_msg = error_msg:gsub('"', '\\"')
  vim.api.nvim_command('echohl ErrorMsg | echom "Error in packer_compiled: '..error_msg..'" | echom "Please check your config for correctness" | echohl None')
end
