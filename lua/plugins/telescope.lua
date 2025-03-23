return{
	'nvim-telescope/telescope.nvim', tag = '0.1.8',
	requires = {{'nvim-lua/plenary.nvim'}},
	config = function()
		local builtin = require('telescope.builtin')
		vim.keymap.set('n', '<leader>ff', builtin.find_files, { desc = 'Telescope find files' })
		-- I think I need ripgrep for this one to work
		-- vim.keymap.set('n', '<leader>fg', builtin.live_grep, { desc = 'Telescope live grep' })
		vim.keymap.set('n', '<leader>fb', builtin.buffers, { desc = 'Telescope buffers' })
		vim.keymap.set('n', '<leader>fh', builtin.help_tags, { desc = 'Telescope help tags' })
		-- Not sure if this works on Windows
		-- vim.keymap.set('n', '<C-p>', builtin.git_files, { desc = 'Telescope search GIT files' })
	end
}
