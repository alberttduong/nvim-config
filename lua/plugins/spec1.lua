return {
    { "EdenEast/nightfox.nvim",
		lazy = false,
		priority = 1000,
		config = function()
			vim.cmd([[colorscheme nordfox]])
		end,
    }, 

    { 'stevearc/oil.nvim',
		opts = {},
		-- Optional dependencies
		dependencies = { { "echasnovski/mini.icons", opts = {} } },
		-- dependencies = { "nvim-tree/nvim-web-devicons" }, -- use if prefer nvim-web-devicons
    },
    
    { "nvim-treesitter/nvim-treesitter",
		build = ":TSUpdate",
		config = function()
			require 'nvim-treesitter.configs'.setup {
				highlight = { enable = true, }
			}
		end
    },

	-- LSP

	{'williamboman/mason.nvim'},
	{'williamboman/mason-lspconfig.nvim'},

	{'VonHeikemen/lsp-zero.nvim', branch = 'v3.x'},
	{'neovim/nvim-lspconfig'},
	{'hrsh7th/cmp-nvim-lsp'},
	{'hrsh7th/nvim-cmp'},
	{'L3MON4D3/LuaSnip'},


	{'nvim-telescope/telescope.nvim', tag = '0.1.8',
		dependencies = {'nvim-lua/plenary.nvim'}
	},
	{
	  "coffebar/neovim-project",
	  opts = {
		projects = { -- define project roots
		  "~/Projects/*",
		  "~/.config/*",
		},
	  },
	  init = function()
		-- enable saving the state of plugins in the session
		vim.opt.sessionoptions:append("globals") -- save global variables that start with an uppercase letter and contain at least one lowercase letter.
	  end,
	  dependencies = {
		{ "nvim-lua/plenary.nvim" },
		{ "nvim-telescope/telescope.nvim", tag = "0.1.4" },
		{ "Shatur/neovim-session-manager" },
	  },
	  lazy = false,
	  priority = 100,
	},
}
