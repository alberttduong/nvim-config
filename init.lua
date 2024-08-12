vim.g.mapleader = "<Space>"

require("config.lazy")
local lsp_zero = require('lsp-zero')

lsp_zero.on_attach(function(client, bufnr)
  -- see :help lsp-zero-keybindings
  -- to learn the available actions
  lsp_zero.default_keymaps({buffer = bufnr})
end)

require("mason").setup()

require('mason-lspconfig').setup({
  handlers = {
    function(server_name)
      require('lspconfig')[server_name].setup({})
    end,
  },
})

require("config.lsp")
require("oil").setup()

vim.keymap.set('n', "<leader>v", "<cmd>vs<cr>", { silent = true })
vim.keymap.set('n', "<leader>h", "<C-w>h", { silent = true })
vim.keymap.set('n', "<leader>l", "<C-w>l", { silent = true })
vim.keymap.set('n', "<leader>x", "<cmd>close<cr>", { silent = true })

vim.opt.shiftwidth=4
vim.opt.tabstop=4

vim.opt.number = true
vim.opt.relativenumber = true

vim.opt.signcolumn = "number"
