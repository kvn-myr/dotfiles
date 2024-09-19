-- Only required if you have packer configured as `opt`
vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)

    --
    -- Packer can manage itself
    --
    use 'wbthomason/packer.nvim'

    --
    -- Telescope
    --
    use {
        'nvim-telescope/telescope.nvim', tag = '0.1.6',
        -- or                            , branch = '0.1.x',
        requires = { { 'nvim-lua/plenary.nvim' } }
    }

    --
    -- Color scheme
    --
    --use({
        --'rose-pine/neovim', as = 'rose-pine',
        --config = function()
            --vim.cmd('colorscheme rose-pine')
        --end
    --})
    use ("EdenEast/nightfox.nvim")

    --
    -- Treesitter
    --
    use('nvim-treesitter/nvim-treesitter', { run = ':TSUpdate' })
    use('mbbill/undotree')
    use('tpope/vim-fugitive')

    --
    -- LSP-Zero
    --
    use {
        'VonHeikemen/lsp-zero.nvim',
        requires = {
            -- LSP Support
            { 'neovim/nvim-lspconfig' },
            {                                      -- Optional
              'williamboman/mason.nvim',
              run = function()
                pcall(vim.cmd, 'MasonUpdate')
              end,
            },
            { 'williamboman/mason-lspconfig.nvim' },

            -- Autocompletion
            { 'hrsh7th/nvim-cmp' },
            { 'hrsh7th/cmp-buffer' },
            { 'hrsh7th/cmp-path' },
            { 'saadparwaiz1/cmp_luasnip' },
            { 'hrsh7th/cmp-nvim-lsp' },
            { 'hrsh7th/cmp-nvim-lua' },

            -- Snippets
            { 'L3MON4D3/LuaSnip' },
            { 'rafamadriz/friendly-snippets' },
        }
    }

    --
    -- vimtex 
    -- 
    use('lervag/vimtex')

    -- 
    -- zk-nvim
    --
    use("mickael-menu/zk-nvim")

end)
