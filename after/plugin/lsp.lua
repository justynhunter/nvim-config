local lsp = require("lsp-zero")

lsp.preset("recommended")

local cmp = require("cmp")
cmp.setup({
    mapping = cmp.mapping.preset.insert({
        ["<C-p>"] = cmp.mapping.select_prev_item(cmp_select),
	    ["<C-n>"] = cmp.mapping.select_next_item(cmp_select),
	    ["<CR>"] = cmp.mapping.confirm({ select = true }),
	    ["<C-space>"] = cmp.mapping.complete(),
    })
})



local cmp_select = { behavior = cmp.SelectBehavior.Select }

lsp.on_attach(function(client, bufnr)
  local opts = {buffer = bufnr, remap = false}

  vim.keymap.set("n", "gd", function() vim.lsp.buf.definition() end, opts)
  vim.keymap.set("n", "<leader>h", function() vim.lsp.buf.hover() end, opts)
  vim.keymap.set("n", "<leader>vws", function() vim.lsp.buf.workspace_symbol() end, opts)
  vim.keymap.set("n", "<leader>vd", function() vim.diagnostic.open_float() end, opts)
  vim.keymap.set("n", "[d", function() vim.diagnostic.goto_next() end, opts)
  vim.keymap.set("n", "]d", function() vim.diagnostic.goto_prev() end, opts)
  vim.keymap.set("n", "<leader>vca", function() vim.lsp.buf.code_action() end, opts)
  vim.keymap.set("n", "<leader>vrr", function() vim.lsp.buf.references() end, opts)
  vim.keymap.set("n", "<leader>vrn", function() vim.lsp.buf.rename() end, opts)
  vim.keymap.set("i", "<C-h>", function() vim.lsp.buf.signature_help() end, opts)
end)

vim.api.nvim_command("au BufWritePost *.ex lua vim.lsp.buf.format()")

require("mason").setup({})
require("mason-lspconfig").setup({
	ensure_installed = {
        -- javascript
        "tsserver",
        "eslint",
        -- go
        "gopls",
        "golangci_lint_ls",
        -- other
        "rust_analyzer",
        "elixirls",
        "omnisharp",
        "lua_ls",
        "marksman",
    },
	handlers = {
		lsp.default_setup,
	},
})

lsp.setup()
