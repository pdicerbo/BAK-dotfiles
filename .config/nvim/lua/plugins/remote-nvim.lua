return {

   {
        "coffebar/neovim-project",
        opts = {
            projects = { -- define project roots
                "~/0LF/*",
                "~/0LF",
                "~/EXP0/*",
                "~/EXP0",
                "~/code_utils",
                "~/DockerEnvs",
                "~/MyDotFiles",
                "~/POCs/*",
                "/workspaces/*",
                "/workspaces",
                "~/.config/*",
            },
            picker = {
                type = "telescope", -- or "fzf-lua"
            }
        },
        init = function()
            -- enable saving the state of plugins in the session
            vim.opt.sessionoptions:append("globals") -- save global variables that start with an uppercase letter and contain at least one lowercase letter.
        end,
        dependencies = {
            { "nvim-lua/plenary.nvim" },
            -- optional picker
            -- { "nvim-telescope/telescope.nvim", tag = "0.1.8" },
            -- optional picker
            -- { "ibhagwan/fzf-lua" },
            { "Shatur/neovim-session-manager" },
        },
        lazy = false,
        priority = 100,
        vim.keymap.set('n', '<M-f>', '<cmd>NeovimProjectDiscover<CR>', { desc = "Discover Projects" }),
        vim.keymap.set('n', '<M-F>', '<cmd>NeovimProjectLoadRecent<CR>', { desc = "Open Last Session" })
    },

}
