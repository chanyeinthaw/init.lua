-- Higlight on yank. Try yap
vim.api.nvim_create_autocmd("TextYankPost", {
  desc = "Highlight when yanking (copying) text",
  group = vim.api.nvim_create_augroup("kickstart-highlight-yank", { clear = true }),
  callback = function()
    vim.highlight.on_yank()
  end,
})

-- function _G.set_terminal_keymaps()
-- 	local opts = { buffer = 0 }
-- 	vim.keymap.set("t", "<esc>", [[<C-\><C-n>]], opts)
-- 	vim.keymap.set("t", "jk", [[<C-\><C-n>]], opts)
-- 	vim.keymap.set("t", "<C-h>", [[<Cmd>wincmd h<CR>]], opts)
-- 	vim.keymap.set("t", "<C-j>", [[<Cmd>wincmd j<CR>]], opts)
-- 	vim.keymap.set("t", "<C-k>", [[<Cmd>wincmd k<CR>]], opts)
-- 	vim.keymap.set("t", "<C-l>", [[<Cmd>wincmd l<CR>]], opts)
-- 	vim.keymap.set("t", "<C-w>", [[<C-\><C-n><C-w>]], opts)
-- end
--
-- -- if you only want these mappings for toggle term use term://*toggleterm#* instead
-- vim.cmd("autocmd! TermOpen term://* lua set_terminal_keymaps()")
