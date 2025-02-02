require("nonchalantgarage.core")
require("nonchalantgarage.lazy")
vim.cmd("source ~/.config/nvim/lua/nonchalantgarage/plugins/yaml_tree.vim") -- Adjust the path if needed

-- Disable relative numbers in insert mode
vim.api.nvim_create_autocmd("InsertEnter", {
  pattern = "*",
  command = "set norelativenumber",
})

-- Enable relative numbers in normal mode
vim.api.nvim_create_autocmd("InsertLeave", {
  pattern = "*",
  command = "set relativenumber",
})
