-- PLUGINS WITH PACKER.NVIM

require('packer').startup(function()
    use 'wbthomason/packer.nvim'
    use {
        "ellisonleao/gruvbox.nvim", 
        requires = {"rktjmp/lush.nvim"}
    }
    use {
        'eddyekofo94/gruvbox-flat.nvim',
        config = function()
            vim.g.gruvbox_transparent = true
        end
    }
    use {
        'nvim-treesitter/nvim-treesitter', 
        run = ':TSUpdate'
    }
    use "terrortylor/nvim-comment"
    use "windwp/nvim-autopairs"
    use {
        'kyazdani42/nvim-tree.lua',
        requires = 'kyazdani42/nvim-web-devicons',
        config = function() require'nvim-tree'.setup {} end
    }
    use {
        'nvim-telescope/telescope.nvim',
        requires = {'nvim-lua/plenary.nvim'}
    }
    use {
        'lewis6991/gitsigns.nvim',
        requires = {
            'nvim-lua/plenary.nvim'
        },
      -- tag = 'release' -- To use the latest release
    }
    use {
        "folke/which-key.nvim",
        config = function()
            require("which-key").setup {
            -- your configuration comes here
            -- or leave it empty to use the default settings
            -- refer to the configuration section below
          }
        end
    }
    -- Lua
    use "ahmedkhalf/project.nvim"
end
)

