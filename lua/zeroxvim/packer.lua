-- This file can be loaded by calling `lua require('plugins')` from your init.vim

-- Only required if you have packer configured as `opt`
vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
    -- Packer can manage itself
    use 'wbthomason/packer.nvim'

    use {
        'nvim-telescope/telescope.nvim',
        requires = { { 'nvim-lua/plenary.nvim' } }
    }

    use {
        "nvim-telescope/telescope-file-browser.nvim",
        requires = { "nvim-telescope/telescope.nvim", "nvim-lua/plenary.nvim" }
    }
    use 'windwp/nvim-autopairs'
    -- Themes
    use 'rose-pine/neovim'
    use 'ellisonleao/gruvbox.nvim'
    use 'Mofiqul/dracula.nvim'


    use "theprimeagen/harpoon"
    use "mbbill/undotree"

    use {
        'nvim-treesitter/nvim-treesitter',
        { run = ':TSUpdate' }
    }

    use {
        'VonHeikemen/lsp-zero.nvim',
        requires = {
            -- LSP Support
            { 'neovim/nvim-lspconfig' },
            { 'williamboman/mason.nvim' },
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
    use 'nvim-tree/nvim-web-devicons'
    use {
        'nvim-lualine/lualine.nvim',
        requires = { 'kyazdani42/nvim-web-devicons', opt = true }
    }

    use {
        'nvim-tree/nvim-tree.lua',
        requires = {
            'nvim-tree/nvim-web-devicons', -- optional, for file icons
        },
    }

    use({
        "kylechui/nvim-surround",
        tag = "*", -- Use for stability; omit to use `main` branch for the latest features
    })
    -- Lua
    use {
        "folke/trouble.nvim",
        requires = "nvim-tree/nvim-web-devicons",
    }

    use({
      "stevearc/conform.nvim",
      config = function()
        require("conform").setup()
      end,
    })
   --  use {
   --     "nvimtools/none-ls.nvim"
   --     requires = { { 'nvim-lua/plenary.nvim' } }
   -- }

    -- languages stuff
    use 'udalov/kotlin-vim'
    
    -- for rust
    use 'simrat39/rust-tools.nvim'

    use 'fei6409/log-highlight.nvim'


-- For the AI and avante

    -- Required for Avante 
    use 'stevearc/dressing.nvim'
    use 'MunifTanjim/nui.nvim'
    use 'MeanderingProgrammer/render-markdown.nvim'

    -- Optional dependencies   
--    use 'HakonHarnes/img-clip.nvim'
    use 'zbirenbaum/copilot.lua'
    
    -- Avante.nvim with build process
    use {
        'yetone/avante.nvim',
        branch = 'main',
        run = 'make',
        config = function()
            require('avante').setup()
        end
    }


    use({ "kdheepak/lazygit.nvim",
        -- optional for floating window border decoration
        requires = {
            "nvim-lua/plenary.nvim",
        },
    })

end)
