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

require("config.options")
require("config.lsp")
require("oil").setup()

-- Splitting windows
vim.keymap.set('n', "<leader>s", "<cmd>split<cr>", { silent = true })
vim.keymap.set('n', "<leader>v", "<cmd>vs<cr>", { silent = true })

-- Moving windows
vim.keymap.set('n', "<leader>j", "<C-w>j", { silent = true })
vim.keymap.set('n', "<leader>k", "<C-w>k", { silent = true })
vim.keymap.set('n', "<leader>h", "<C-w>h", { silent = true })
vim.keymap.set('n', "<leader>l", "<C-w>l", { silent = true })

-- Closing windows
vim.keymap.set('n', "<leader>x", "<cmd>close<cr>", { silent = true })

-- Tabs
vim.keymap.set('n', "<leader>n", "<cmd>tabnew<cr>", { silent = true })
vim.keymap.set('n', "<leader>N", "<cmd>tabc<cr>", { silent = true })
vim.keymap.set('n', "<leader>H", "<cmd>-tabnext<cr>", { silent = true })
vim.keymap.set('n', "<leader>L", "<cmd>+tabnext<cr>", { silent = true })

-- View sessions
vim.keymap.set('n', "<leader>p", "<cmd>Telescope neovim-project discover<cr>", { silent = true })

vim.keymap.set('n', "<leader>o", "<cmd>Oil<cr>", { silent = true })
vim.keymap.set('n', "<leader>-", "<cmd>Oil<cr>", { silent = true })

-- Save/Quit
vim.keymap.set('n', "<leader>w", "<cmd>w<cr>", { silent = true })
vim.keymap.set('n', "<leader>q", "<cmd>q<cr>", { silent = true })
vim.keymap.set('n', "<leader>Q", "<cmd>qa<cr>", { silent = true })

--Normal Mode
vim.keymap.set('t', "<ESC>", "<C-\\><C-n>", { silent = true, noremap = true })

vim.opt.shiftwidth=4
vim.opt.tabstop=4

vim.opt.number = true
vim.opt.relativenumber = true

vim.opt.signcolumn = "number"

vim.opt.clipboard = "unnamedplus"
