call plug#begin()

    " Colors
    Plug 'tjdevries/colorbuddy.vim'
    Plug 'tjdevries/gruvbuddy.nvim'

    "Telescope
    Plug 'nvim-lua/plenary.nvim'
    Plug 'nvim-telescope/telescope.nvim'
    Plug 'nvim-telescope/telescope-fzf-native.nvim', { 'do': 'make' }

    " LSP installer
    Plug 'williamboman/nvim-lsp-installer'
    Plug 'neovim/nvim-lspconfig'

    " LSP
    Plug 'neovim/nvim-lspconfig'

    " LSP autocomplete
    Plug 'neovim/nvim-lspconfig'
    Plug 'hrsh7th/cmp-nvim-lsp'
    Plug 'hrsh7th/cmp-buffer'
    Plug 'hrsh7th/cmp-path'
    Plug 'hrsh7th/cmp-cmdline'
    Plug 'hrsh7th/nvim-cmp'

    " Snippets
    Plug 'L3MON4D3/LuaSnip'
    Plug 'saadparwaiz1/cmp_luasnip'

    " Treesitter
    Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}

    " TeX
    Plug 'lervag/vimtex'

    " Zettelkasten
    Plug 'pyrho/nerveux.nvim'
    Plug 'nvim-lua/popup.nvim'
    "Plug 'oberblastmeister/neuron.nvim', { 'branch': 'unstable' }
    
call plug#end()
