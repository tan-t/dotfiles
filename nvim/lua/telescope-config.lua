local status, telescope = pcall(require, "telescope")
if (not status) then return end
local actions = require('telescope.actions')
local builtin = require("telescope.builtin")

local function telescope_buffer_dir()
  return vim.fn.expand('%:p:h')
end

require("telescope").load_extension "file_browser"

local fb_actions = require "telescope".extensions.file_browser.actions

telescope.setup {
  defaults = {
    mappings = {
      n = {
        ["q"] = actions.close,
        ["o"] = actions.select_tab,
        ["v"] = actions.select_vertical
      },
    },
  },
  extentions = {
    file_browser = {
    hijack_netrw = true,
    mappings = {
      n = {
        ["q"] = actions.close,
        ["o"] = actions.select_tab
      },
    },
  }
  }
}

local opts = { noremap = true, silent = true }
local term_opts = { silent = true }

--local keymap = vim.keymap
local keymap = vim.api.nvim_set_keymap

-- Telescope --
keymap("n",  "<C-p>",":Telescope find_files hidden=true<Return>",  opts)
keymap("n",  "<C-g>",":Telescope live_grep hidden=true<Return>",  opts)
keymap("n",  "<C-n>",":Telescope file_browser path=%:p:h select_buffer=true hidden=true<Return>",  opts)

require("telescope").load_extension "file_browser"

require("telescope").load_extension "gh"
