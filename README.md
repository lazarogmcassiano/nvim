Neovim

My personal Neovim configuration for development.

Languages
Java
Python
C
Bash
Features
LSP
Autocomplete
Mason
Treesitter
Neo-tree
Telescope
Linting
Formatting
CodeCompanion
Git
Structure
lua/
└── plugins/
    ├── cmp.lua
    ├── codecompanion.lua
    ├── colors.lua
    ├── format.lua
    ├── lint.lua
    ├── lsp.lua
    ├── mason.lua
    ├── neotree.lua
    ├── telescope.lua
    └── treesitter.lua

Install Requirements

Neovim v0.12.5+

Git

lazy.nvim

Setup

Install Neovim v0.12.5 or newer.

Then install lazy.nvim:

git clone --filter=blob:none --branch=stable \
  https://github.com/folke/lazy.nvim.git \
  ~/.local/share/nvim/lazy/lazy.nvim


Clone this config:

git clone https://github.com/lazarogmcassiano/nvim ~/.config/nvim

That's all.

Then run:

nvim
