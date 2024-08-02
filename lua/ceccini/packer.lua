vim.cmd [[packadd packer.nvim]]
vim.cmd([[ let g:neo_tree_remove_legacy_commands = 1 ]])

return require('packer').startup(
  function(use)
    -- Packer can manage itself
    use 'wbthomason/packer.nvim'

    use {
      'nvim-telescope/telescope.nvim', tag = '0.1.4',
      -- or                            , branch = '0.1.x',
      requires = { { 'nvim-lua/plenary.nvim' } }
    }


    use({
      'projekt0n/github-nvim-theme',
      tag = 'v0.0.7',
      -- or                            branch = '0.0.x'
      config = function()
        require('github-theme').setup({
          -- ...
        })

        vim.cmd('colorscheme github_dark')
      end
    })

    use('nvim-treesitter/nvim-treesitter', { run = ':TSUpdate' })

    use('ThePrimeagen/harpoon')

    use('mbbill/undotree')

    use('tpope/vim-fugitive')

    use {
      'VonHeikemen/lsp-zero.nvim',
      branch = 'v2.x',
      requires = {
        -- LSP Support
        { 'neovim/nvim-lspconfig' }, -- Required
        {
          -- Optional
          'williamboman/mason.nvim',
          run = function()
            pcall(vim.cmd, 'MasonUpdate')
          end
        },
        { 'williamboman/mason-lspconfig.nvim' }, -- Optional

        -- Autocompletion
        { 'hrsh7th/nvim-cmp' },     -- Required
        { 'hrsh7th/cmp-nvim-lsp' }, -- Required
        { 'L3MON4D3/LuaSnip' },     -- Required
      }
    }

    use 'rafamadriz/friendly-snippets'
    use "saadparwaiz1/cmp_luasnip"

    use {
      "nvim-neo-tree/neo-tree.nvim",
      branch = "v2.x",
      requires = {
        "nvim-lua/plenary.nvim",
        "nvim-tree/nvim-web-devicons", -- not strictly required, but recommended
        "MunifTanjim/nui.nvim",
      }
    }

    use { "akinsho/toggleterm.nvim", tag = '*', config = function()
      require("toggleterm").setup({
        open_mapping = [[<c-t>]],
        hide_numbers = true
      })
    end }

    use { 'vim-test/vim-test' }

    use {
      'numToStr/Comment.nvim',
      config = function()
        require('Comment').setup()
      end
    }

    use {
      'nvim-lualine/lualine.nvim',
      requires = { 'nvim-tree/nvim-web-devicons', opt = true },
      config = function()
        require('lualine').setup()
      end
    }

    use "sindrets/diffview.nvim"

    use 'f-person/git-blame.nvim'

    use 'sbdchd/neoformat'

    use "tpope/vim-dadbod"
    use "kristijanhusak/vim-dadbod-ui"
    use "kristijanhusak/vim-dadbod-completion"

    use {
      'VonHeikemen/fine-cmdline.nvim',
      requires = {
        { 'MunifTanjim/nui.nvim' }
      }
    }

    use "rebelot/kanagawa.nvim"
    use "tpope/vim-surround"
    use { 'akinsho/bufferline.nvim', requires = 'nvim-tree/nvim-web-devicons' }
    use({
      'Wansmer/treesj',
      requires = { 'nvim-treesitter/nvim-treesitter' },
      config = function()
        require('treesj').setup({ --[[ your config ]] })
      end,
    })
    use "folke/flash.nvim"
    use("tiagovla/scope.nvim")

    use "github/copilot.vim"

    use "christoomey/vim-tmux-navigator"
  end)
