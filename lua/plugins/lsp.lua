return {
    {
        "neovim/nvim-lspconfig",

        config = function()
            vim.lsp.config("pyright", {})
            vim.lsp.config("ts_ls", {})
            vim.lsp.config("bashls", {})

            vim.lsp.enable("pyright")
            vim.lsp.enable("ts_ls")
            vim.lsp.enable("bashls")
        end,
    },
        {
        "mfussenegger/nvim-jdtls",
        ft = { "java" },
    },
}
