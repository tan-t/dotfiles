local autocmd = vim.api.nvim_create_autocmd -- Create autocommand
local opts = { noremap = true, silent = true }
local term_opts = { silent = true }

--local keymap = vim.keymap
local keymap = vim.api.nvim_set_keymap

vim.cmd("command! -nargs=* T split | wincmd j | resize 10 | terminal " .. "<args>")

-- ターミナル
keymap("t", "<ESC>", "<C-\\><C-n>", opts)
keymap("n", "<C-`>", "<Command>T<Return>", opts)

autocmd("TermOpen", {
	pattern = "*",
	command = "startinsert",
})
