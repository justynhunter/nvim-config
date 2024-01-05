require("justynhunter")
local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"

if not vim.loop.fs_stat(lazypath) then
  vim.fn.system({
    "git",
    "clone",
    "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git",
    "--branch=stable", -- latest stable release
    lazypath,
  })
end
vim.opt.rtp:prepend(lazypath)

require("lazy").setup({
    {'nvim-telescope/telescope.nvim',
        tag = '0.1.5',
        dependencies = { 'nvim-lua/plenary.nvim' },
    },
	"nvim-lua/plenary.nvim",
	"ellisonleao/gruvbox.nvim", priority = 100, config = true,
	"nvim-treesitter/nvim-treesitter",
    {"savq/melange-nvim"},
    {"jacoborus/tender.vim"},
    {
        "AlexvZyl/nordic.nvim",
        lazy = false,
        config = function()
            require 'nordic' .load()
        end
    },
	"theprimeagen/harpoon",
	"mbbill/undotree",
	"tpope/vim-fugitive",
	{'VonHeikemen/lsp-zero.nvim',
        branch = 'v3.x',
        dependencies = {
            -- LSP
            'neovim/nvim-lspconfig',
            "williamboman/mason.nvim",
            "williamboman/mason-lspconfig.nvim",

            -- Autocomplete
            'hrsh7th/cmp-nvim-lsp',
            'hrsh7th/nvim-cmp',

            -- Snippets
            'L3MON4D3/LuaSnip',
        }
    },
    {
        'folke/which-key.nvim',
        lazy = true,
    },
    {"vijaymarupudi/nvim-fzf"},
    {
        "romgrk/barbar.nvim",
        dependencies = {
            "lewis6991/gitsigns.nvim",
            "nvim-tree/nvim-web-devicons",
        },
        init = function() vim.g.barbar_auto_setup = false end,
        opts = {},
        version = '^1.0.0',
    },
})


