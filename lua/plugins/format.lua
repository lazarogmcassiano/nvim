return {

{
    "stevearc/conform.nvim",

    config = function()

        require("conform").setup({

            formatters_by_ft = {


                python = {
                    "ruff_format"
                },


                javascript = {
                    "prettier"
                },


                typescript = {
                    "prettier"
                },


                sh = {
                    "shfmt"
                }

            }

        })


        vim.keymap.set(
            "n",
            "<leader>f",

            function()

                require("conform")
                .format()

            end

        )

    end
}

}
