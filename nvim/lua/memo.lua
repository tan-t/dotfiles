vim.g.gist_token = ""
vim.g.gist_post_private = 1

vim.api.nvim_create_autocmd("BufWritePost", {
	pattern = "~/memo/*",
	command = "Gist",
})

require('telescope').load_extension('gh')

