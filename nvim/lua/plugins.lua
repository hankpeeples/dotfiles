vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
    use 'wbthomason/packer.nvim'

    -- common
    use 'vim-airline/vim-airline'
    use 'vim-airline/vim-airline-themes'

    use {
        'neoclide/coc.nvim', branch = 'release'
    }

    use {
        'akinsho/bufferline.nvim',
        tag = "v2.*",
        requires = 'kyazdani42/nvim-web-devicons'
    }

    use {
        'lewis6991/spellsitter.nvim',
        'nvim-treesitter/nvim-treesitter', run = ':TSUpdate'
    }

    use 'ryanoasis/vim-devicons'

    use 'sheerun/vim-polyglot'
    use 'mbbill/undotree'

    use 'rust-lang/rust.vim'
    -- use {'fatih/vim-go', run = ":GoUpdateBinaries"}

    use 'sainnhe/sonokai'

    use 'tmsvg/pear-tree'

    use 'kyazdani42/nvim-tree.lua'

    use 'wakatime/vim-wakatime'

    use { 'akinsho/toggleterm.nvim', tag = '*' }

    use 'lewis6991/impatient.nvim'

    use 'airblade/vim-gitgutter'

    use 'luochen1990/rainbow'
end)
