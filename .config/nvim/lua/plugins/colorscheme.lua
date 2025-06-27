return {
    {
        "rebelot/kanagawa.nvim",
        -- config = function()
        --     require('kanagawa').setup({
        --         transparent = true
        --     })
        --     vim.cmd("colorscheme kanagawa")
        -- end
    },

    {
        "catppuccin/nvim",
        name = "catppuccin",
        priority = 1000,
        config = function()
            require("catppuccin").setup({
                integrations = {
                    cmp = true,
                    gitsigns = true,
                    nvimtree = true,
                    treesitter = true,
                    notify = true,
                    mini = {
                        enabled = true,
                        indentscope_color = "",
                    },
                }
            })
        end
    },

    {
        "folke/tokyonight.nvim",
        lazy = false,
        priority = 1000,
        opts = {},
    },

    {
        "shaunsingh/nord.nvim",
        lazy = false,
        priority = 1000,
    },

    {
        "Mofiqul/dracula.nvim",
        lazy = false,
        priority = 1000,
    },

    {
        "marko-cerovac/material.nvim",
        lazy = false,
        priority = 1000,
    },

    {
        "olimorris/onedarkpro.nvim",
        lazy = false,
        priority = 1000,
        config = function()
            vim.cmd("colorscheme onedark")
        end
    },
}
