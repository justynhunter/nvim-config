local opts = { noremap = true, silent = true }
-- Move to previous/next
vim.keymap.set("n", "<A-h>", "<Cmd>BufferPrevious<CR>", opts)
vim.keymap.set("n", "<A-l>", "<Cmd>BufferNext<CR>", opts)
-- Re-order tabs
vim.keymap.set("n", "<A-<>", "<Cmd>BufferMovePrevious<CR>", opts)
vim.keymap.set("n", "<A->>", "<Cmd>BufferMoveNext<CR>", opts)
-- Goto specific buffer
vim.keymap.set("n", "<A-1>", "<Cmd>BufferGoto 1<CR>", opts)
vim.keymap.set("n", "<A-2>", "<Cmd>BufferGoto 2<CR>", opts)
vim.keymap.set("n", "<A-3>", "<Cmd>BufferGoto 3<CR>", opts)
vim.keymap.set("n", "<A-4>", "<Cmd>BufferGoto 4<CR>", opts)
vim.keymap.set("n", "<A-5>", "<Cmd>BufferGoto 5<CR>", opts)
vim.keymap.set("n", "<A-6>", "<Cmd>BufferGoto 6<CR>", opts)
vim.keymap.set("n", "<A-7>", "<Cmd>BufferGoto 7<CR>", opts)
vim.keymap.set("n", "<A-8>", "<Cmd>BufferGoto 8<CR>", opts)
vim.keymap.set("n", "<A-9>", "<Cmd>BufferGoto 9<CR>", opts)
vim.keymap.set("n", "<A-0>", "<Cmd>BufferGoto 0<CR>", opts)
-- close buffer
vim.keymap.set("n", "<A-c>", "<Cmd>BufferClose<CR>", opts)
