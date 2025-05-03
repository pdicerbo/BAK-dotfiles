return {
    {
        "williamboman/mason.nvim",
        config = function()
            require("mason").setup {}
        end,
    },
    {
        "williamboman/mason-lspconfig.nvim",
        config = function()
            require("mason-lspconfig").setup {
                ensure_installed = {
                    "bashls",
                    "clangd",
                    "cmake",
                    "docker_compose_language_service",
                    "dockerls",
                    "jsonls",
                    "lua_ls",
                    "pyright",

                },
                automatic_installation = true,
            }
        end,
    },
    {
        "neovim/nvim-lspconfig",
        config = function()
            local lspconfig = require("lspconfig")
            lspconfig.clangd.setup {
                cmd = { "clangd", "--background-index" },
                init_options = {
                    fallbackFlags = { '-std=c++17' },
                },
                -- capabilities = require("cmp_nvim_lsp").default_capabilities(),
                -- on_attach = function(client, bufnr)
                --     require("lsp_signature").on_attach()
                --     require("keymaps").lsp_keymaps(bufnr)
                -- end,
            }
            lspconfig.cmake.setup {
                cmd = { "cmake-language-server" },
                init_options = {
                    buildDirectory = "build",
                },
            }
            vim.lsp.enable('clangd')
            vim.keymap.set('n', '<leader>h', vim.lsp.buf.hover, { desc = "LSP Hover" })
            -- vim.keymap.set('n', 'H', vim.lsp.buf.implementation, { desc = "LSP Implementation" })
        end,
    }
}
