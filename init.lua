-- Configurações básicas

vim.g.mapleader = " "

vim.opt.number = true
vim.opt.relativenumber = true

vim.opt.tabstop = 4
vim.opt.shiftwidth = 4
vim.opt.expandtab = true

vim.opt.termguicolors = true

vim.opt.mouse = "a"

vim.keymap.set("n", "<leader>e", ":Neotree toggle<CR>", {
    desc = "Abrir árvore de arquivos",
})

local lazypath =
vim.fn.stdpath("data") .. "/lazy/lazy.nvim"

vim.opt.rtp:prepend(lazypath)

require("lazy").setup({
    {
        import = "plugins"
    }
})
