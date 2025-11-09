return {
	{
		"akinsho/toggleterm.nvim",
		version = "*",
		config = function()
			require("toggleterm").setup({
				open_mapping = [[<C-\>]],
				direction = "float",
				size = 20,
				start_in_insert = true,
				persist_size = true,
			})
		end,
	},
}
