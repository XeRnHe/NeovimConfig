local keymap = vim.keymap
local keymap_opt = { noremap = true, silent = true }

vim.g.mapleader = " "

keymap.set("n", "<leader>w", ":w<CR>", {})
keymap.set("n", "<leader>q", ":q<CR>", {})

keymap.set("n", "<leader>ss", ":split<cr>", keymap_opt)
keymap.set("n", "<leader>sv", ":vsplit<cr>", keymap_opt)
keymap.set("n", "<leader>sh", "<C-w>h");
keymap.set("n", "<leader>sj", "<C-w>j");
keymap.set("n", "<leader>sk", "<C-w>k");
keymap.set("n", "<leader>sl", "<C-w>l");
