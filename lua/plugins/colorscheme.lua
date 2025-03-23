-- theme to be loaded:
local theme = "gruvbox"

--[[ Available Themes:
local theme = "nordic"
local theme = "rose-pine"
local theme = "tokyonight"
local theme = "catppuccin"
]]

if( theme == "tokyonight" )
    then
        return {
            {
                "folke/tokyonight.nvim",
                lazy = false, -- make sure we load this during startup if it is your main colorscheme
                priority = 1000, -- make sure to load this before all the other start plugins
                config = function()
                    -- load the colorscheme here
                    vim.cmd([[colorscheme tokyonight]])
                end,
            },
        }
    elseif( theme == "gruvbox" )
        then
            return {
                {
                    'ellisonleao/gruvbox.nvim',
                    lazy = false,
                    priority = 1000,
                    as = 'gruvbox',
                    opts = {
                        transparent_mode = 'true',
                    },
                    config = function()
                        vim.cmd('colorscheme gruvbox')
                    end
                },
            }
        elseif( theme == "rose-pine" )
            then
                return {
                    {
                        'rose-pine/neovim',
                        lazy = false,
                        priority = 1000,
                        name = 'rose-pine',
                        config = function()
                            vim.cmd('colorscheme rose-pine')
                        end
                    },
                }
            elseif( theme == "catppuccin" )
                then
                    return {
                        {
                            'catppuccin/nvim',
                            lazy = false,
                            priority = 1000,
                            name = 'catppuccin',
                            config = function()
                                vim.cmd('colorscheme catppuccin')
                            end
                        },
                    }
            elseif( theme == "nordic" )
                then
                    return {
                        {
                            'AlexvZyl/nordic.nvim',
                            lazy = false,
                            priority = 1000,
                            name = 'nordic',
                            config = function()
                                vim.cmd('colorscheme nordic')
                            end
                        },
                    }

                end
