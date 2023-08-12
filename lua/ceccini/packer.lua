vim.cmd [[packadd packer.nvim]]
vim.cmd([[ let g:neo_tree_remove_legacy_commands = 1 ]])

return require('packer').startup(
    function(use)
        -- Packer can manage itself
        use 'wbthomason/packer.nvim'

        use {
            'nvim-telescope/telescope.nvim', tag = '0.1.1',
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

        use({
            "folke/tokyonight.nvim",
            lazy = false,
            priority = 1000,
            opts = {},
            config = function()
                require("tokyonight").setup({
                    style = 'storm',
                    styles = {
                        -- Style to be applied to different syntax groups
                        -- Value is any valid attr-list value for `:help nvim_set_hl`
                        comments = { italic = true },
                        keywords = { italic = true },
                        -- Background styles. Can be "dark", "transparent" or "normal"
                        sidebars = "dark", -- style for sidebars, see below
                        floats = "dark",   -- style for floating windows
                    },
                })
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

        use 'airblade/vim-gitgutter'

        use {
            'nvim-lualine/lualine.nvim',
            requires = { 'nvim-tree/nvim-web-devicons', opt = true },
            config = function()
                require('lualine').setup()
            end
        }

        use "sindrets/diffview.nvim"

        use 'f-person/git-blame.nvim'
    end)
