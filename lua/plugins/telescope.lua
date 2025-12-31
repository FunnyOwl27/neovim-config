return {
    'nvim-telescope/telescope.nvim', tag = 'v0.2.0',
      dependencies = {
		'nvim-lua/plenary.nvim',
		{ 'nvim-telescope/telescope-fzf-native.nvim', build = 'make'},
	},
	config = function ()
	require('telescope').setup{}
		local builtin = require("telescope.builtin")
		vim.keymap.set("n", "<leader>sf", builtin.find_files, { desc = 'Search current directory' })
        vim.keymap.set("n", "<leader>sn", function ()
            builtin.find_files { cwd = vim.fn.stdpath('config') }
        end, { desc = 'Search Neovim config' })
	end
  }

