return {
    {
        "williamboman/mason.nvim",

        cmd = "Mason",

        config = function()
            require("mason").setup({
                ui = {
                    border = "rounded",
                },
            })
        end,
    },


    {
        "williamboman/mason-lspconfig.nvim",

        dependencies = {
            "williamboman/mason.nvim",
            "neovim/nvim-lspconfig",
        },

        config = function()
            require("mason-lspconfig").setup({
                ensure_installed = {
                    "pyright",
                    "ts_ls",
                    "bashls",
                },

                automatic_installation = true,
            })
        end,
    },


    {
        "WhoIsSethDaniel/mason-tool-installer.nvim",

        dependencies = {
            "williamboman/mason.nvim",
        },

        config = function()
            require("mason-tool-installer").setup({
                ensure_installed = {
                    "ruff",
                    "prettier",
                    "shfmt",
                    "shellcheck",
                },

                auto_update = false,
                run_on_start = true,
            })
        end,
    },
}
