local status, nvim_lsp = pcall(require, "lspconfig")
if (not status) then return end

local protocol = require('vim.lsp.protocol')

local on_attach = function(client, bufnr)
  -- format on save
  if client.server_capabilities.documentFormattingProvider then
    vim.api.nvim_create_autocmd("BufWritePre", {
      group = vim.api.nvim_create_augroup("Format", { clear = true }),
      buffer = bufnr,
      callback = function() vim.lsp.buf.format() end
    })
  end
end

local function organize_imports()
  local params = {
    command = "_typescript.organizeImports",
    arguments = {vim.api.nvim_buf_get_name(0)},
    title = ""
  }
  vim.lsp.buf.execute_command(params)
end

-- TypeScript
nvim_lsp.tsserver.setup {
  on_attach = on_attach,
  filetypes = { "typescript", "typescriptreact", "typescript.tsx" },
  cmd = { "typescript-language-server", "--stdio" },
  commands = {
    OrganizeImports = {
      organize_imports,
      description = "Organize Imports"
    }
  }
}

nvim_lsp.gopls.setup {
  on_attach = on_attach,
  filetypes = { "go" },
  cmd = { "gopls", "serve" },
  commands = {}
}

local saga_status, saga = pcall(require, "lspsaga")
if (not saga_status) then return end

saga.setup({
  definition = {
    edit = "<C-c>e",
    vsplit = "<C-c>v",
    split = "<C-c>i",
    tabe = "<C-c>o",
    quit = "q",
  }
})

local opts = { noremap = true, silent = true }
vim.keymap.set('n', '<C-i>', '<Cmd>Lspsaga diagnostic_jump_next<CR>', opts)
vim.keymap.set('n', 'K', '<Cmd>Lspsaga hover_doc<CR>', opts)
vim.keymap.set('n', 'gd', '<Cmd>Lspsaga lsp_finder<CR>', opts)
vim.keymap.set('i', '<C-k>', '<Cmd>Lspsaga signature_help<CR>', opts)
vim.keymap.set('n', 'gp', '<Cmd>Lspsaga preview_definition<CR>', opts)
vim.keymap.set('n', 'gr', '<Cmd>Lspsaga rename<CR>', opts)

vim.keymap.set('n', '<C-;>', '<cmd>Lspsaga code_action<CR>', opts)
vim.keymap.set('n', '<A-O>', '<cmd>OrganizeImports<CR>', opts)


