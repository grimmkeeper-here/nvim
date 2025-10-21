-- disable netrw at the very start of your init.lua (strongly advised)
vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1

-- set termguicolors to enable highlight groups
vim.opt.termguicolors = true

-- OR setup with some options
require("nvim-tree").setup({
  sort_by = "case_sensitive",
  renderer = {
    group_empty = true,
  },
  filters = {
    dotfiles = false,
    git_clean = false,
    no_buffer = false,
    git_ignored = false,
  },
})

-- Keymaps for NvimTree
local api = require("nvim-tree.api")

-- Toggle tree
vim.keymap.set("n", "<leader>e", api.tree.toggle, { desc = "Toggle NvimTree" })