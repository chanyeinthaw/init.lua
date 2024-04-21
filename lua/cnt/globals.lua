function _G.send_escape()
	local keys = vim.api.nvim_replace_termcodes("<ESC>", true, false, true)
	vim.api.nvim_feedkeys(keys, "m", false)
end

-- vim: ts=2 sts=2 sw=2 et
