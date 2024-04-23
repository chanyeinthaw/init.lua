return {
	{
		"stevearc/aerial.nvim",
		-- Optional dependencies
		dependencies = {
			"nvim-treesitter/nvim-treesitter",
			"nvim-tree/nvim-web-devicons",
		},

		config = function()
			require("aerial").setup({
				layout = {
          min_width = 20
        },
				filter_kind = {
					"Class",
					"Constructor",
					"Enum",
					"Function",
					"Interface",
					"Module",
					"Method",
					"Struct",
					"Property",
				},

        on_attach = function() 
          require("aerial").tree_close_all()
        end
			})

			vim.keymap.set("n", "<leader>cs", "<cmd>AerialToggle!<CR>", {
				desc = "[C]ode [s]tructure",
			})
		end,
	},
}
-- vim: ts=2 sts=2 sw=2 et
