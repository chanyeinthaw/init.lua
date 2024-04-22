return {
	{
		"ThePrimeagen/harpoon",
		branch = "harpoon2",
		dependencies = { "nvim-lua/plenary.nvim" },
		config = function()
			local harpoon = require("harpoon")
			harpoon:setup({})

			-- local conf = require("telescope.config").values
			-- local function toggle_telescope(harpoon_files)
			-- 	local file_paths = {}
			-- 	for _, item in ipairs(harpoon_files.items) do
			-- 		table.insert(file_paths, item.value)
			-- 	end
			--
			-- 	require("telescope.pickers")
			-- 		.new({}, {
			-- 			prompt_title = "Harpoon",
			-- 			finder = require("telescope.finders").new_table({
			-- 				results = file_paths,
			-- 			}),
			-- 			previewer = conf.file_previewer({}),
			-- 			sorter = conf.generic_sorter({}),
			-- 		})
			-- 		:find()
			-- end

			vim.keymap.set("n", "<leader>ha", function()
				harpoon:list():add()
			end, {
				desc = "[H]arpoon [a]dd",
			})

			vim.keymap.set("n", "<C-e>", function()
				harpoon.ui:toggle_quick_menu(harpoon:list())
			end, {
				desc = "Open harpoon",
			})

			for i = 1, 9 do
				vim.keymap.set("n", "<leader>" .. i, function()
					harpoon:list():select(i)
				end)
			end

			vim.keymap.set("n", "<C-S-P>", function()
				harpoon:list():prev()
			end)
			vim.keymap.set("n", "<C-S-N>", function()
				harpoon:list():next()
			end)

			-- vim.keymap.set("n", "<C-e>", function()
			-- 	toggle_telescope(harpoon:list())
			-- end, { desc = "Open harpoon window" })
		end,
	},
}
-- vim: ts=2 sts=2 sw=2 et
