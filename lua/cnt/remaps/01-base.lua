-- Delete all buffers except current
vim.keymap.set("n", "<leader>bd", "<cmd>bd|e#|'\"<CR>", {
	desc = "Delete all [b]uffers except current",
})

-- vim.keymap.set("n", "<C-S-W>", function()
-- 	vim.cmd("bufdo bd")
-- 	vim.cmd("Neotree reveal current")
-- end, {
-- 	desc = "Close all buffers",
-- })

-- Add all missing imports
vim.keymap.set("n", "<leader>ai", "<cmd>TSToolsAddMissingImports<CR>", {
	desc = "[A]dd all missing imports",
})

-- Save current buffer and edit
vim.keymap.set("n", "<leader>rl", function()
	vim.cmd("w")
	vim.cmd("e")
end, {
	desc = "[R]e[l]oad current buffer",
})

vim.keymap.set("n", "<Esc>", "<cmd>nohlsearch<CR>")
vim.keymap.set("i", "jk", "<Esc>")
vim.keymap.set("n", "<leader>qq", "<cmd>qa!<CR>")

-- Diagnostic keymaps
vim.keymap.set("n", "[d", vim.diagnostic.goto_prev, { desc = "Go to previous [D]iagnostic message" })
vim.keymap.set("n", "]d", vim.diagnostic.goto_next, { desc = "Go to next [D]iagnostic message" })
vim.keymap.set("n", "<leader>e", vim.diagnostic.open_float, { desc = "Show diagnostic [E]rror messages" })
vim.keymap.set("n", "<leader>q", function()
	require("trouble").toggle()
end, {
	desc = "Toggle diagnostic viewer",
})

-- Pane navigation keymaps
vim.keymap.set("n", "<C-h>", "<C-w><C-h>", { desc = "Move focus to the left window" })
vim.keymap.set("n", "<C-l>", "<C-w><C-l>", { desc = "Move focus to the right window" })
vim.keymap.set("n", "<C-j>", "<C-w><C-j>", { desc = "Move focus to the lower window" })
vim.keymap.set("n", "<C-k>", "<C-w><C-k>", { desc = "Move focus to the upper window" })
