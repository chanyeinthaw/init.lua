-- Lsp rename
-- vim.keymap.set("n", "<leader>rn", function()
-- 	vim.lsp.buf.rename()
-- end)
--
-- Delete all buffers except current
vim.keymap.set("n", "<leader>bd", "<cmd>bd|e#|'\"<CR>", {
	desc = "Delete all [b]uffers except current",
})

-- Add all missing imports
vim.keymap.set("n", "<leader>ai", "<cmd>TSToolsAddMissingImports<CR>", {
	desc = "[A]dd all missing imports",
})

vim.keymap.set("n", "<leader>se", function()
	vim.cmd("w")
	vim.cmd("e")
end, {
	desc = "[S]ave and [e]dit",
})

vim.keymap.set("n", "<Esc>", "<cmd>nohlsearch<CR>")
vim.keymap.set("i", "jk", "<Esc>")
vim.keymap.set("n", "<leader>qq", "<cmd>qa!<CR>")

-- Diagnostic keymaps
vim.keymap.set("n", "[d", vim.diagnostic.goto_prev, { desc = "Go to previous [D]iagnostic message" })
vim.keymap.set("n", "]d", vim.diagnostic.goto_next, { desc = "Go to next [D]iagnostic message" })
vim.keymap.set("n", "<leader>e", vim.diagnostic.open_float, { desc = "Show diagnostic [E]rror messages" })
vim.keymap.set("n", "<leader>q", vim.diagnostic.setloclist, { desc = "Open diagnostic [Q]uickfix list" })

-- TIP: Disable arrow keys in normal mode
-- vim.keymap.set("n", "<left>", '<cmd>echo "Use h to move!!"<CR>')
-- vim.keymap.set("n", "<right>", '<cmd>echo "Use l to move!!"<CR>')
-- vim.keymap.set("n", "<up>", '<cmd>echo "Use k to move!!"<CR>')
-- vim.keymap.set("n", "<down>", '<cmd>echo "Use j to move!!"<CR>')

-- Keybinds to make split navigation easier.
--  Use CTRL+<hjkl> to switch between windows
--
--  See `:help wincmd` for a list of all window commands
vim.keymap.set("n", "<C-h>", "<C-w><C-h>", { desc = "Move focus to the left window" })
vim.keymap.set("n", "<C-l>", "<C-w><C-l>", { desc = "Move focus to the right window" })
vim.keymap.set("n", "<C-j>", "<C-w><C-j>", { desc = "Move focus to the lower window" })
vim.keymap.set("n", "<C-k>", "<C-w><C-k>", { desc = "Move focus to the upper window" })

-- vim: ts=2 sts=2 sw=2 et
