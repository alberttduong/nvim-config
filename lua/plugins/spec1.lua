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
	opts = {
	    ensure_installed = {
		"bash",
		"html",
		"javascript",
		"json",
		"lua",
		"markdown",
		"markdown_inline",
		"python",
		"query",
		"regex",
		"tsx",
		"typescript",
		"vim",
		"yaml",
	    },
	},
    },

}
