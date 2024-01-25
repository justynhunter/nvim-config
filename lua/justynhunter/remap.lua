vim.g.mapleader = " "
vim.keymap.set("n", "<leader>e", vim.cmd.Ex)

-- move line up and down
vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")

-- remove whitespace below
-- vim.keymap.set("n", "dJ", "mzJ`z")

-- page down and up
vim.keymap.set("n", "<C-d>", "<C-d>zz")
vim.keymap.set("n", "<C-u>", "<C-u>zz")
vim.keymap.set("n", "<C-k>", "5k")
vim.keymap.set("n", "<C-j>", "5j")

-- next/prev match, center screen
vim.keymap.set("n", "n", "nzzzv")
vim.keymap.set("n", "N", "Nzzzv")

-- yank to system clipboard
vim.keymap.set("n", "<leader>y", "\"+y")
vim.keymap.set("v", "<leader>y", "\"+y")
vim.keymap.set("n", "<leader>Y", "\"+Y")

-- move around splits
vim.keymap.set("n", "<leader>p", ":split<Enter>")
vim.keymap.set("n", "<leader>v", ":vsplit<Enter>")
vim.keymap.set("n", "H", "<C-w>h")
vim.keymap.set("n", "L", "<C-w>l")
vim.keymap.set("n", "K", "<C-w>k")
vim.keymap.set("n", "J", "<C-w>j")

-- unmap
vim.keymap.set("n", "Q", "<nop>")

-- replace all under cursor 
vim.keymap.set("n", "<leader>s", [[:%s/\<<C-r><C-w>\>/<C-r><C-w>/gI<Left><Left><Left>]])

-- make executeable
vim.keymap.set("n", "<leader>x", "<cmd>!chmod +x %<CR>", { silent = true })

-- surround
vim.keymap.set("n", "<leader>\"", "ciw\"<C-r>\"\"<Esc>")
vim.keymap.set("n", "<leader>(", "ciw(<C-r>\")<Esc>")
vim.keymap.set("n", "<leader>{", "ciw{<C-r>\"}<Esc>")
vim.keymap.set("n", "<leader>[", "ciw[<C-r>\"]<Esc>")
vim.keymap.set("v", "<leader>\"", "c\"<C-r>\"\"<Esc>")
vim.keymap.set("v", "<leader>(", "c(<C-r>\")<Esc>")
vim.keymap.set("v", "<leader>{", "c{<cr><C-r>\"<cr>}<Esc>vi{<S-<><S->>")
vim.keymap.set("v", "<leader>[", "c[<C-r>\"]<Esc>")
