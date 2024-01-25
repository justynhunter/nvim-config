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
	"nvim-treesitter/nvim-treesitter",
    {"savq/melange-nvim"},
	"theprimeagen/harpoon",
	"mbbill/undotree",
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
    --{
    --    "romgrk/barbar.nvim",
    --    dependencies = {
    --        "lewis6991/gitsigns.nvim",
    --        "nvim-tree/nvim-web-devicons",
    --    },
    --    init = function() vim.g.barbar_auto_setup = false end,
    --    opts = {},
    --    version = '^1.0.0',
    --},
    {
        "kylechui/nvim-surround",
        version = "*", -- Use for stability; omit to use `main` branch for the latest features
        event = "VeryLazy",
        config = function()
            require("nvim-surround").setup({
            -- Configuration here, or leave empty to use defaults
            })
    end
    },
})


